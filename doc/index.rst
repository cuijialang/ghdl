.. only:: html

   .. exec::
      from helpers import createShields
      createShields()

   |SHIELD:gh-logo| |SHIELD:gitter| |SHIELD:code-lic| |SHIELD:doc-lic| |SHIELD:travis-ci| |SHIELD:appveyor| |SHIELD:release|

.. only:: html

   News
   ****

   21.05.2020 - Nightly build assets available
   ===========================================

   * After each successful CI run of branch ``master``, packages are published as assets of pre-release `nightly <https://github.com/ghdl/ghdl/releases/tag/nightly>`_.
   * GitHub Action `ghdl/setup-ghdl-ci <https://github.com/ghdl/setup-ghdl-ci>`_ was created, to allow easy installation of nightly GHDL assets in GitHub Actions workflows.

   09.05.2020 - New repositories and a wiki were created
   =====================================================

   * The plugin for Yosys was moved from `tgingold/ghdlsynth-beta <https://github.com/tgingold/ghdlsynth-beta>`_ to
     `ghdl/ghdl-yosys-plugin <https://github.com/ghdl/ghdl-yosys-plugin>`_.
   * Repository `ghdl/ghdl-cosim <https://github.com/ghdl/ghdl-cosim>`_ was created. It contains documentation and code
     examples related to VHPIDIRECT, VPI and SystemC. See :ref:`COSIM` and `Previous work and future ideas <https://github.com/ghdl/ghdl-cosim/issues/1>`_.
   * A `Wiki <https://github.com/ghdl/ghdl/wiki>`_ was created. The roadmap and ideas for documentation and internship
     programs were moved there. If you want to contribute anyhow, `have a look <https://github.com/ghdl/ghdl/wiki>`_!

   28.02.2020 - `GHDL v0.37 was released <https://github.com/ghdl/ghdl/milestone/8?closed=1>`_
   ===========================================================================================

   The major changes are:

      * Experimental support of synthesis (either with --synth or with
	the Yosys plugin).
      * Fixes and improved support of vhdl 2008.
      * Last version that supports the Mentor variation of
	std_logic_arith.  The Synopsys one is still available.

   03.03.2019 - `GHDL v0.36 was released <https://github.com/ghdl/ghdl/milestone/7?closed=1>`_
   ===========================================================================================

   23.02.2019 - GHDL v0.36-rc1 was released
   ========================================

   The major improvements are:

      * more support of unbounded arrays and records
      * support of UVVM and Vunit

   29.11.2018 - GHDL 20181129 was released
   =======================================

   20.12.2017 - A new GitHub organization was created
   ==================================================

   A new GitHub organization is created and the main repo is moved from `github.com/tgingold/ghdl <https://github.com/tgingold/ghdl>`_ to
   `github.com/ghdl/ghdl <https://github.com/ghdl/ghdl>`_. Old refs will continue working, because permanent redirects are set up. However, we suggest
   every contributor to update the remote URLs in their local clones.

   14.12.2017 - `GHDL 0.35 was released <https://github.com/ghdl/ghdl/milestone/3?closed=1>`_
   ==========================================================================================

   15.08.2017 - `GHDL 0.34 was released <https://github.com/ghdl/ghdl/milestone/1?closed=1>`_
   ==========================================================================================

   23.10.2015 - GHDL 0.33 was released
   ===================================

.. only:: latex

   .. rubric:: 21.05.2020 - Nightly build assets available.

   .. rubric:: 09.05.2020 - New repositories and a wiki were created.

   .. rubric:: 28.02.2020 - GHDL v0.37 was released.

   .. rubric:: 03.03.2019 - GHDL v0.36 was released.

   .. rubric:: 23.02.2019 - GHDL v0.36-rc1 was released.

   .. rubric:: 29.11.2018 - GHDL 20181129 was released.

   .. rubric:: 20.12.2017 - A new GitHub organization was created.

   .. rubric:: 14.12.2017 - GHDL 0.35 was released.

   .. rubric:: 15.08.2017 - GHDL 0.34 was released.

   .. rubric:: 23.10.2015 - GHDL 0.33 was released.

.. toctree::
   :caption: Introduction
   :hidden:

   about
   contribute
   licenses

.. raw:: latex

   \part{Getting GHDL}

.. toctree::
   :caption: Getting GHDL
   :hidden:

   getting/Releases
   Building GHDL <getting/index>
   getting/PrecompileVendorPrimitives

.. raw:: latex

   \part{GHDL usage}

.. toctree::
   :caption: GHDL usage
   :hidden:

   quick_start/README
   using/InvokingGHDL
   using/Simulation
   using/Synthesis
   using/CommandReference
   using/Foreign
   using/ImplementationOfVHDL
   using/ImplementationOfVITAL

.. raw:: latex

   \part{Development}

.. toctree::
   :caption: Development
   :hidden:

   development/Debugging
   development/CodingStyle

.. raw:: latex

   \part{Internals}

.. toctree::
   :caption: Internals
   :hidden:

   internals/Overview
   internals/Frontend
   internals/AST

.. raw:: latex

   \part{Index}

.. toctree::
   :caption: Index
   :hidden:

   genindex
