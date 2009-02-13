/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2008 Soeren Sonnenburg
 * Copyright (C) 2008 Fraunhofer Institute FIRST and Max Planck Society
 */

#ifndef __SGOBJECT_H__
#define __SGOBJECT_H__

#include "lib/io.h"
#include "base/Parallel.h"
#include "base/Version.h"

class CSGObject;
class CIO;

// define reference counter macros
#define SG_REF(x) { if (x) (x)->ref(); }
#define SG_UNREF(x) { if (x) { if ((x)->unref()==0) (x)=0; } } 

/** Class SGObject is the base class of all shogun objects. Apart from dealing
 * with reference counting that is used to manage shogung objects in memory
 * (erase unused object, avoid cleaning objects when they are still in use), it
 * provides interfaces for:
 * -# parallel - to determine the number of used CPUs for a method (cf. CParallel)
 * -# io - to output messages and general i/o (cf. CIO)
 * -# version - to provide version information of the shogun version used (cf. CVersion)
 */
class CSGObject
{
public:
	inline CSGObject() : refcount(0)
	{
		set_global_objects();
	}

	inline CSGObject(const CSGObject& orig) : refcount(0), io(orig.io),
		parallel(orig.parallel), version(orig.version)
	{
		set_global_objects();
	}

    virtual ~CSGObject()
	{
		SG_UNREF(version);
		SG_UNREF(parallel);
		SG_UNREF(io);
	}

	/** increase reference counter
	 *
	 * @return reference count
	 */
	inline int32_t ref()
	{
		++refcount;
		SG_DEBUG("ref() refcount %ld obj %s (%p) increased\n", refcount, this->get_name(), this);
		return refcount;
	}

	/** display reference counter
	 *
	 * @return reference count
	 */
	inline int32_t ref_count() const
	{
		SG_DEBUG("ref_count(): refcount %d, obj %s (%p)\n", refcount, this->get_name(), this);
		return refcount;
	}

	/** decrement reference counter and deallocate object if refcount is zero
	 * before or after decrementing it
	 *
	 * @return reference count
	 */
	inline int32_t unref()
	{
		if (refcount==0 || --refcount==0)
		{
			SG_DEBUG("unref() refcount %ld, obj %s (%p) destroying\n", refcount, this->get_name(), this);
			delete this;
			return 0;
		}
		else
		{
			SG_DEBUG("unref() refcount %ld obj %s (%p) decreased\n", refcount, this->get_name(), this);
			return refcount;
		}
	}

	/** get the name of a kernel
	 *
	 * @return name of object
	 */
	virtual const char* get_name() const=0;

private:
	void set_global_objects();

private:
	int32_t refcount;

public:
	CIO* io;
	CParallel* parallel;
	CVersion* version;
};
#endif // __SGOBJECT_H__