/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Copyright (C) 2012 Soeren Sonnenburg
 */

#include <shogun/lib/config.h>

#ifdef HAVE_LAPACK
#include <shogun/regression/LeastSquaresRegression.h>
#include <shogun/regression/LinearRidgeRegression.h>
#include <shogun/mathematics/lapack.h>
#include <shogun/mathematics/Math.h>

using namespace shogun;

CLeastSquaresRegression::CLeastSquaresRegression()
: CLinearRidgeRegression()
{
	m_tau=0;
}

CLeastSquaresRegression::CLeastSquaresRegression(CSimpleFeatures<float64_t>* data, CLabels* lab)
: CLinearRidgeRegression(0, data, lab)
{
}
#endif
