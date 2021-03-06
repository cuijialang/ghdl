
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc143.vhd,v 1.2 2001-10-26 16:29:41 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

package c04s03b02x02p12n01i00143pkg is
  type fourstate is ('0','1','x','z');
  function fourstate_to_bit(x : fourstate) return bit;
  procedure simple ( crude : in bit;
                     signal refined : out bit);
end c04s03b02x02p12n01i00143pkg;

package body c04s03b02x02p12n01i00143pkg is
  procedure simple ( crude : in bit;
                     signal refined : out bit) is
  begin
    refined <= crude after 5 ns;
  end simple;
  
  function fourstate_to_bit(x : fourstate) return bit is
    variable newval: bit := '0';
  begin
    case x is
      when '0' => newval := '0';
      when '1' => newval := '1';
      when 'z' => newval := '0';
      when 'x' => newval := '0';
    end case;
    return newval;
  end fourstate_to_bit;
end c04s03b02x02p12n01i00143pkg;

use work.c04s03b02x02p12n01i00143pkg.all;
ENTITY c04s03b02x02p12n01i00143ent IS
  port( x, y: in fourstate);
END c04s03b02x02p12n01i00143ent;

ARCHITECTURE c04s03b02x02p12n01i00143arch OF c04s03b02x02p12n01i00143ent IS
  signal yint : bit;
BEGIN

  simple ( fourstate_to_bit(y) , yint);

  TESTING: PROCESS
  BEGIN
    wait for 10 ns;
    assert NOT( yint = '0' )
      report "***PASSED TEST: c04s03b02x02p12n01i00143"
      severity NOTE;
    assert ( yint = '0' )
      report "***FAILED TEST: c04s03b02x02p12n01i00143 - Type conversion test failed."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c04s03b02x02p12n01i00143arch;
