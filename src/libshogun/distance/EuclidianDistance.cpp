/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2007-2008 Soeren Sonnenburg
 * Copyright (C) 2007-2008 Fraunhofer Institute FIRST and Max-Planck-Society
 */

#include "lib/common.h"
#include "lib/io.h"
#include "distance/EuclidianDistance.h"
#include "features/Features.h"
#include "features/RealFeatures.h"

CEuclidianDistance::CEuclidianDistance()
: CRealDistance()
{
	disable_sqrt=false;
}

CEuclidianDistance::CEuclidianDistance(CRealFeatures* l, CRealFeatures* r)
: CRealDistance()
{
	disable_sqrt=false;
	init(l, r);
}

CEuclidianDistance::~CEuclidianDistance()
{
	cleanup();
}

bool CEuclidianDistance::init(CFeatures* l, CFeatures* r)
{
	CRealDistance::init(l, r);

	return true;
}

void CEuclidianDistance::cleanup()
{
}

bool CEuclidianDistance::load_init(FILE* src)
{
	return false;
}

bool CEuclidianDistance::save_init(FILE* dest)
{
	return false;
}

float64_t CEuclidianDistance::compute(int32_t idx_a, int32_t idx_b)
{
	int32_t alen, blen;
	bool afree, bfree;
	float64_t result=0;

	float64_t* avec=((CRealFeatures*) lhs)->
		get_feature_vector(idx_a, alen, afree);
	float64_t* bvec=((CRealFeatures*) rhs)->
		get_feature_vector(idx_b, blen, bfree);
	ASSERT(alen==blen);

	for (int32_t i=0; i<alen; i++)
		result+=CMath::sq(avec[i] - bvec[i]);

	((CRealFeatures*) lhs)->free_feature_vector(avec, idx_a, afree);
	((CRealFeatures*) rhs)->free_feature_vector(bvec, idx_b, bfree);

	if (disable_sqrt) {
		return result;
	} else {
		return CMath::sqrt(result);
	}
}