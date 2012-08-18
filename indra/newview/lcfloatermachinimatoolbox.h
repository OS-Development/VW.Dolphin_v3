/*
    A very basic floater with no functionality, required for having the floater as a toybox button
    Copyright (C) 2012  Lance Corrimal <Lance.Corrimal@eregion.de>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/


#ifndef LCFLOATERMACHINIMATOOLBOX_H
#define LCFLOATERMACHINIMATOOLBOX_H

#include "llfloater.h"


class LCFloaterMachinimaToolbox : public LLFloater
{

public:
    LCFloaterMachinimaToolbox(const LLSD& key, const LLFloater::Params& params = getDefaultParams());
    virtual ~LCFloaterMachinimaToolbox();
};

#endif // LCFLOATERMACHINIMATOOLBOX_H
