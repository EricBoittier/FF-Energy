!     -*- f90 -*-
!     This file is autogenerated with f2py (version:1.21.2)
!     It contains Fortran 90 wrappers to fortran functions.

      subroutine f2py_dcm_fortran_getdims_files_load_cube(r,s,f2pysetdat&
     &a,flag)
      use dcm_fortran, only: d => files_load_cube

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
         !s(r) must be equal to len(d(1))
      end if
      flag = 2
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_files_load_cube
      subroutine f2py_dcm_fortran_getdims_atom_num(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => atom_num

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_atom_num
      subroutine f2py_dcm_fortran_getdims_atom_pos(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => atom_pos

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1),s(2),s(3)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_atom_pos
      subroutine f2py_dcm_fortran_getdims_atom_lcl(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => atom_lcl

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1),s(2),s(3),s(4),s(5)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_atom_lcl
      subroutine f2py_dcm_fortran_getdims_grid_imp(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => grid_imp

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_grid_imp
      subroutine f2py_dcm_fortran_getdims_grid_pos(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => grid_pos

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1),s(2)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_grid_pos
      subroutine f2py_dcm_fortran_getdims_grid_val(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => grid_val

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_grid_val
      subroutine f2py_dcm_fortran_getdims_grid_fit(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => grid_fit

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_grid_fit
      subroutine f2py_dcm_fortran_getdims_grid_aff(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => grid_aff

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_grid_aff
      subroutine f2py_dcm_fortran_getdims_grid_sid(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => grid_sid

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_grid_sid
      subroutine f2py_dcm_fortran_getdims_file_val(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => file_val

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_file_val
      subroutine f2py_dcm_fortran_getdims_file_fit(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => file_fit

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_file_fit
      subroutine f2py_dcm_fortran_getdims_file_grd(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => file_grd

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1),s(2)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_file_grd
      subroutine f2py_dcm_fortran_getdims_mdcm_clcl(r,s,f2pysetdata,flag&
     &)
      use dcm_fortran, only: d => mdcm_clcl

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_mdcm_clcl
      subroutine f2py_dcm_fortran_getdims_mdcm_poly(r,s,f2pysetdata,flag&
     &)
      use dcm_fortran, only: d => mdcm_poly

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_mdcm_poly
      subroutine f2py_dcm_fortran_getdims_mdcm_afrm(r,s,f2pysetdata,flag&
     &)
      use dcm_fortran, only: d => mdcm_afrm

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1),s(2)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_mdcm_afrm
      subroutine f2py_dcm_fortran_getdims_mdcm_ftyp(r,s,f2pysetdata,flag&
     &)
      use dcm_fortran, only: d => mdcm_ftyp

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_mdcm_ftyp
      subroutine f2py_dcm_fortran_getdims_mdcm_nchg(r,s,f2pysetdata,flag&
     &)
      use dcm_fortran, only: d => mdcm_nchg

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1),s(2)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_mdcm_nchg
      subroutine f2py_dcm_fortran_getdims_mdcm_cxyz(r,s,f2pysetdata,flag&
     &)
      use dcm_fortran, only: d => mdcm_cxyz

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_mdcm_cxyz
      subroutine f2py_dcm_fortran_getdims_atom_fit(r,s,f2pysetdata,flag)
      use dcm_fortran, only: d => atom_fit

      integer flag
      external f2pysetdata
      logical ns
      integer r,i
      integer(8) s(*)
      ns = .FALSE.
      if (allocated(d)) then
         do i=1,r
            if ((size(d,i).ne.s(i)).and.(s(i).ge.0)) then
               ns = .TRUE.
            end if
         end do
         if (ns) then
            deallocate(d)
         end if
      end if
      if ((.not.allocated(d)).and.(s(1).ge.1)) then
       allocate(d(s(1)))
      end if
      if (allocated(d)) then
         do i=1,r
            s(i) = size(d,i)
         end do
      end if
      flag = 1
      call f2pysetdata(d,allocated(d))
      end subroutine f2py_dcm_fortran_getdims_atom_fit
      subroutine f2pywrap_dcm_fortran_load_cube_files (nfiles, nchar, fi&
     &les_esp_cube, files_dens_cube, f2py_files_esp_cube_d0, f2py_files_&
     &dens_cube_d0)
      use dcm_fortran, only : load_cube_files
      integer nfiles
      integer nchar
      integer f2py_files_esp_cube_d0
      integer f2py_files_dens_cube_d0
      character(len=nchar) files_esp_cube(f2py_files_esp_cube_d0)
      character(len=nchar) files_dens_cube(f2py_files_dens_cube_d0)
      call load_cube_files(nfiles, nchar, files_esp_cube, files_dens_cub&
     &e)
      end subroutine f2pywrap_dcm_fortran_load_cube_files
      subroutine f2pywrap_dcm_fortran_read_cube_file (file_cube, mode, i&
     &grid, iimp, fnatom, fatom_num, fatom_pos, fngrid, fnimpt, f2py_fat&
     &om_num_d0, f2py_fatom_pos_d0, f2py_fatom_pos_d1)
      use dcm_fortran, only : read_cube_file
      integer mode
      integer igrid
      integer iimp
      integer fnatom
      integer fngrid
      integer fnimpt
      integer f2py_fatom_num_d0
      integer f2py_fatom_pos_d0
      integer f2py_fatom_pos_d1
      character(len=*) file_cube
      integer fatom_num(f2py_fatom_num_d0)
      real(kind=8) fatom_pos(f2py_fatom_pos_d0,f2py_fatom_pos_d1)
      call read_cube_file(file_cube, mode, igrid, iimp, fnatom, fatom_nu&
     &m, fatom_pos, fngrid, fnimpt)
      end subroutine f2pywrap_dcm_fortran_read_cube_file
      subroutine f2pywrap_dcm_fortran_in_interaction_belt (in_interactio&
     &n_beltf2pywrap, fatom_pos, x, mincut, maxcut, f2py_fatom_pos_d0, f&
     &2py_x_d0)
      use dcm_fortran, only : in_interaction_belt
      real(kind=8) mincut
      real(kind=8) maxcut
      integer f2py_fatom_pos_d0
      integer f2py_x_d0
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) x(f2py_x_d0)
      logical in_interaction_beltf2pywrap
      in_interaction_beltf2pywrap = .not.(.not.in_interaction_belt(fatom&
     &_pos, x, mincut, maxcut))
      end subroutine f2pywrap_dcm_fortran_in_interaction_belt
      subroutine f2pywrap_dcm_fortran_calc_axis_locl_pos (fatom_pos, fat&
     &om_elcl, f2py_fatom_pos_d0, f2py_fatom_elcl_d0, f2py_fatom_elcl_d1&
     &, f2py_fatom_elcl_d2, f2py_fatom_elcl_d3)
      use dcm_fortran, only : calc_axis_locl_pos
      integer f2py_fatom_pos_d0
      integer f2py_fatom_elcl_d0
      integer f2py_fatom_elcl_d1
      integer f2py_fatom_elcl_d2
      integer f2py_fatom_elcl_d3
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) fatom_elcl(f2py_fatom_elcl_d0,f2py_fatom_elcl_d1,f2py&
     &_fatom_elcl_d2,f2py_fatom_elcl_d3)
      call calc_axis_locl_pos(fatom_pos, fatom_elcl)
      end subroutine f2pywrap_dcm_fortran_calc_axis_locl_pos
      subroutine f2pywrap_dcm_fortran_conv_clcl_cxyz (fatom_pos, fatom_e&
     &lcl, fatom_cxyz, f2py_fatom_pos_d0, f2py_fatom_elcl_d0, f2py_fatom&
     &_elcl_d1, f2py_fatom_elcl_d2, f2py_fatom_elcl_d3, f2py_fatom_cxyz_&
     &d0)
      use dcm_fortran, only : conv_clcl_cxyz
      integer f2py_fatom_pos_d0
      integer f2py_fatom_elcl_d0
      integer f2py_fatom_elcl_d1
      integer f2py_fatom_elcl_d2
      integer f2py_fatom_elcl_d3
      integer f2py_fatom_cxyz_d0
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) fatom_elcl(f2py_fatom_elcl_d0,f2py_fatom_elcl_d1,f2py&
     &_fatom_elcl_d2,f2py_fatom_elcl_d3)
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      call conv_clcl_cxyz(fatom_pos, fatom_elcl, fatom_cxyz)
      end subroutine f2pywrap_dcm_fortran_conv_clcl_cxyz
      subroutine f2pywrap_dcm_fortran_conv_poly_cxyz (fatom_pos, fatom_e&
     &lcl, fatom_cxyz, f2py_fatom_pos_d0, f2py_fatom_elcl_d0, f2py_fatom&
     &_elcl_d1, f2py_fatom_elcl_d2, f2py_fatom_elcl_d3, f2py_fatom_cxyz_&
     &d0)
      use dcm_fortran, only : conv_poly_cxyz
      integer f2py_fatom_pos_d0
      integer f2py_fatom_elcl_d0
      integer f2py_fatom_elcl_d1
      integer f2py_fatom_elcl_d2
      integer f2py_fatom_elcl_d3
      integer f2py_fatom_cxyz_d0
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) fatom_elcl(f2py_fatom_elcl_d0,f2py_fatom_elcl_d1,f2py&
     &_fatom_elcl_d2,f2py_fatom_elcl_d3)
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      call conv_poly_cxyz(fatom_pos, fatom_elcl, fatom_cxyz)
      end subroutine f2pywrap_dcm_fortran_conv_poly_cxyz
      subroutine f2pywrap_dcm_fortran_write_cxyz_file (file_cxyz, fatom_&
     &cxyz, rmse, mae, maxae, f2py_fatom_cxyz_d0)
      use dcm_fortran, only : write_cxyz_file
      real(kind=8) rmse
      real(kind=8) mae
      real(kind=8) maxae
      integer f2py_fatom_cxyz_d0
      character(len=*) file_cxyz
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      call write_cxyz_file(file_cxyz, fatom_cxyz, rmse, mae, maxae)
      end subroutine f2pywrap_dcm_fortran_write_cxyz_file
      subroutine f2pywrap_dcm_fortran_set_clcl (clcl, f2py_clcl_d0)
      use dcm_fortran, only : set_clcl
      integer f2py_clcl_d0
      real(kind=8) clcl(f2py_clcl_d0)
      call set_clcl(clcl)
      end subroutine f2pywrap_dcm_fortran_set_clcl
      subroutine f2pywrap_dcm_fortran_set_cxyz (cxyz, f2py_cxyz_d0)
      use dcm_fortran, only : set_cxyz
      integer f2py_cxyz_d0
      real(kind=8) cxyz(f2py_cxyz_d0)
      call set_cxyz(cxyz)
      end subroutine f2pywrap_dcm_fortran_set_cxyz
      subroutine f2pywrap_dcm_fortran_set_poly (poly, f2py_poly_d0)
      use dcm_fortran, only : set_poly
      integer f2py_poly_d0
      real(kind=8) poly(f2py_poly_d0)
      call set_poly(poly)
      end subroutine f2pywrap_dcm_fortran_set_poly
      subroutine f2pywrap_dcm_fortran_get_rmse_weighted (nwgt, wght, rms&
     &e, f2py_wght_d0)
      use dcm_fortran, only : get_rmse_weighted
      integer nwgt
      real(kind=8) rmse
      integer f2py_wght_d0
      real(kind=8) wght(f2py_wght_d0)
      call get_rmse_weighted(nwgt, wght, rmse)
      end subroutine f2pywrap_dcm_fortran_get_rmse_weighted
      subroutine f2pywrap_dcm_fortran_write_cube_file (file_cube, file_c&
     &mt1, file_cmt2, fnatom, fngrid, forg, fngx, fngy, fngz, faxx, faxy&
     &, faxz, fatom_num, fatom_pos, fvgrid, f2py_forg_d0, f2py_faxx_d0, &
     &f2py_faxy_d0, f2py_faxz_d0, f2py_fatom_num_d0, f2py_fatom_pos_d0, &
     &f2py_fatom_pos_d1, f2py_fvgrid_d0)
      use dcm_fortran, only : write_cube_file
      integer fnatom
      integer fngrid
      integer fngx
      integer fngy
      integer fngz
      integer f2py_forg_d0
      integer f2py_faxx_d0
      integer f2py_faxy_d0
      integer f2py_faxz_d0
      integer f2py_fatom_num_d0
      integer f2py_fatom_pos_d0
      integer f2py_fatom_pos_d1
      integer f2py_fvgrid_d0
      character(len=*) file_cube
      character(len=*) file_cmt1
      character(len=*) file_cmt2
      real(kind=8) forg(f2py_forg_d0)
      real(kind=8) faxx(f2py_faxx_d0)
      real(kind=8) faxy(f2py_faxy_d0)
      real(kind=8) faxz(f2py_faxz_d0)
      integer fatom_num(f2py_fatom_num_d0)
      real(kind=8) fatom_pos(f2py_fatom_pos_d0,f2py_fatom_pos_d1)
      real(kind=8) fvgrid(f2py_fvgrid_d0)
      call write_cube_file(file_cube, file_cmt1, file_cmt2, fnatom, fngr&
     &id, forg, fngx, fngy, fngz, faxx, faxy, faxz, fatom_num, fatom_pos&
     &, fvgrid)
      end subroutine f2pywrap_dcm_fortran_write_cube_file
      subroutine f2pywrap_dcm_fortran_calc_mdcm_grid (fatom_cxyz, fngrid&
     &, fxgrid, fvgrid, f2py_fatom_cxyz_d0, f2py_fxgrid_d0, f2py_fvgrid_&
     &d0, f2py_fvgrid_d1)
      use dcm_fortran, only : calc_mdcm_grid
      integer fngrid
      integer f2py_fatom_cxyz_d0
      integer f2py_fxgrid_d0
      integer f2py_fvgrid_d0
      integer f2py_fvgrid_d1
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      real(kind=8) fxgrid(f2py_fxgrid_d0)
      real(kind=8) fvgrid(f2py_fvgrid_d0,f2py_fvgrid_d1)
      call calc_mdcm_grid(fatom_cxyz, fngrid, fxgrid, fvgrid)
      end subroutine f2pywrap_dcm_fortran_calc_mdcm_grid
      subroutine f2pywrap_dcm_fortran_calc_mdcm_xval (calc_mdcm_xvalf2py&
     &wrap, fatom_cxyz, x, f2py_fatom_cxyz_d0, f2py_x_d0)
      use dcm_fortran, only : calc_mdcm_xval
      integer f2py_fatom_cxyz_d0
      integer f2py_x_d0
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      real(kind=8) x(f2py_x_d0)
      real(kind=8) calc_mdcm_xvalf2pywrap
      calc_mdcm_xvalf2pywrap = calc_mdcm_xval(fatom_cxyz, x)
      end subroutine f2pywrap_dcm_fortran_calc_mdcm_xval
      subroutine f2pywrap_dcm_fortran_calc_error (nval, val1, val2, rmse&
     &, mae, maxae, f2py_val1_d0, f2py_val2_d0)
      use dcm_fortran, only : calc_error
      integer nval
      real(kind=8) rmse
      real(kind=8) mae
      real(kind=8) maxae
      integer f2py_val1_d0
      integer f2py_val2_d0
      real(kind=8) val1(f2py_val1_d0)
      real(kind=8) val2(f2py_val2_d0)
      call calc_error(nval, val1, val2, rmse, mae, maxae)
      end subroutine f2pywrap_dcm_fortran_calc_error
      subroutine f2pywrap_dcm_fortran_calc_rmse (calc_rmsef2pywrap, nval&
     &, val1, val2, f2py_val1_d0, f2py_val2_d0)
      use dcm_fortran, only : calc_rmse
      integer nval
      integer f2py_val1_d0
      integer f2py_val2_d0
      real(kind=8) val1(f2py_val1_d0)
      real(kind=8) val2(f2py_val2_d0)
      real(kind=8) calc_rmsef2pywrap
      calc_rmsef2pywrap = calc_rmse(nval, val1, val2)
      end subroutine f2pywrap_dcm_fortran_calc_rmse
      subroutine f2pywrap_dcm_fortran_calc_mse (calc_msef2pywrap, nval, &
     &val1, val2, f2py_val1_d0, f2py_val2_d0)
      use dcm_fortran, only : calc_mse
      integer nval
      integer f2py_val1_d0
      integer f2py_val2_d0
      real(kind=8) val1(f2py_val1_d0)
      real(kind=8) val2(f2py_val2_d0)
      real(kind=8) calc_msef2pywrap
      calc_msef2pywrap = calc_mse(nval, val1, val2)
      end subroutine f2pywrap_dcm_fortran_calc_mse
      
      subroutine f2pyinitdcm_fortran(f2pysetupfunc)
      use dcm_fortran, only : rp
      use dcm_fortran, only : a02ang
      use dcm_fortran, only : ang2a0
      use dcm_fortran, only : ha2kcal
      use dcm_fortran, only : maxlcl
      use dcm_fortran, only : eps
      use dcm_fortran, only : vdw_scaling
      use dcm_fortran, only : vdw_radius
      use dcm_fortran, only : verbose
      use dcm_fortran, only : nload
      use dcm_fortran, only : files_load_cube
      use dcm_fortran, only : file_load_cxyz
      use dcm_fortran, only : file_load_clcl
      use dcm_fortran, only : file_load_poly
      use dcm_fortran, only : natom
      use dcm_fortran, only : ngrid
      use dcm_fortran, only : nimpt
      use dcm_fortran, only : atom_num
      use dcm_fortran, only : atom_pos
      use dcm_fortran, only : atom_lcl
      use dcm_fortran, only : grid_imp
      use dcm_fortran, only : grid_pos
      use dcm_fortran, only : grid_val
      use dcm_fortran, only : grid_fit
      use dcm_fortran, only : grid_aff
      use dcm_fortran, only : grid_sid
      use dcm_fortran, only : file_nmx
      use dcm_fortran, only : file_ngx
      use dcm_fortran, only : file_ngy
      use dcm_fortran, only : file_ngz
      use dcm_fortran, only : file_org
      use dcm_fortran, only : file_axx
      use dcm_fortran, only : file_axy
      use dcm_fortran, only : file_axz
      use dcm_fortran, only : file_val
      use dcm_fortran, only : file_fit
      use dcm_fortran, only : file_grd
      use dcm_fortran, only : nchgs
      use dcm_fortran, only : nfrms
      use dcm_fortran, only : nqdim
      use dcm_fortran, only : npdim
      use dcm_fortran, only : npoly
      use dcm_fortran, only : qtotl
      use dcm_fortran, only : mdcm_rlab
      use dcm_fortran, only : mdcm_clcl
      use dcm_fortran, only : mdcm_poly
      use dcm_fortran, only : mdcm_afrm
      use dcm_fortran, only : mdcm_ftyp
      use dcm_fortran, only : mdcm_nchg
      use dcm_fortran, only : mdcm_cxyz
      use dcm_fortran, only : use_poly
      use dcm_fortran, only : nafit
      use dcm_fortran, only : atom_fit
      use dcm_fortran, only : vdw_grid_min_cutoff
      use dcm_fortran, only : vdw_grid_max_cutoff
      use dcm_fortran, only : read_natm_file
      use dcm_fortran, only : load_cxyz_file
      use dcm_fortran, only : load_clcl_file
      use dcm_fortran, only : load_poly_file
      use dcm_fortran, only : calc_axis_locl_all
      use dcm_fortran, only : write_cxyz_files
      use dcm_fortran, only : get_rmse
      use dcm_fortran, only : get_rmse_each
      use dcm_fortran, only : write_mdcm_cube_files
      use dcm_fortran, only : raise_error
      use dcm_fortran, only : dealloc_all
      interface 
      subroutine f2pywrap_dcm_fortran_load_cube_files (nfiles, nchar, fi&
     &les_esp_cube, files_dens_cube, f2py_files_esp_cube_d0, f2py_files_&
     &dens_cube_d0)
      integer nfiles
      integer nchar
      integer f2py_files_esp_cube_d0
      integer f2py_files_dens_cube_d0
      character(len=nchar) files_esp_cube(f2py_files_esp_cube_d0)
      character(len=nchar) files_dens_cube(f2py_files_dens_cube_d0)
      end subroutine f2pywrap_dcm_fortran_load_cube_files 
      subroutine f2pywrap_dcm_fortran_read_cube_file (file_cube, mode, i&
     &grid, iimp, fnatom, fatom_num, fatom_pos, fngrid, fnimpt, f2py_fat&
     &om_num_d0, f2py_fatom_pos_d0, f2py_fatom_pos_d1)
      integer mode
      integer igrid
      integer iimp
      integer fnatom
      integer fngrid
      integer fnimpt
      integer f2py_fatom_num_d0
      integer f2py_fatom_pos_d0
      integer f2py_fatom_pos_d1
      character(len=*) file_cube
      integer fatom_num(f2py_fatom_num_d0)
      real(kind=8) fatom_pos(f2py_fatom_pos_d0,f2py_fatom_pos_d1)
      end subroutine f2pywrap_dcm_fortran_read_cube_file 
      subroutine f2pywrap_dcm_fortran_in_interaction_belt (in_interactio&
     &n_beltf2pywrap, in_interaction_belt, fatom_pos, x, mincut, maxcut,&
     & f2py_fatom_pos_d0, f2py_x_d0)
      logical in_interaction_belt
      real(kind=8) mincut
      real(kind=8) maxcut
      integer f2py_fatom_pos_d0
      integer f2py_x_d0
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) x(f2py_x_d0)
      logical in_interaction_beltf2pywrap
      end subroutine f2pywrap_dcm_fortran_in_interaction_belt 
      subroutine f2pywrap_dcm_fortran_calc_axis_locl_pos (fatom_pos, fat&
     &om_elcl, f2py_fatom_pos_d0, f2py_fatom_elcl_d0, f2py_fatom_elcl_d1&
     &, f2py_fatom_elcl_d2, f2py_fatom_elcl_d3)
      integer f2py_fatom_pos_d0
      integer f2py_fatom_elcl_d0
      integer f2py_fatom_elcl_d1
      integer f2py_fatom_elcl_d2
      integer f2py_fatom_elcl_d3
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) fatom_elcl(f2py_fatom_elcl_d0,f2py_fatom_elcl_d1,f2py&
     &_fatom_elcl_d2,f2py_fatom_elcl_d3)
      end subroutine f2pywrap_dcm_fortran_calc_axis_locl_pos 
      subroutine f2pywrap_dcm_fortran_conv_clcl_cxyz (fatom_pos, fatom_e&
     &lcl, fatom_cxyz, f2py_fatom_pos_d0, f2py_fatom_elcl_d0, f2py_fatom&
     &_elcl_d1, f2py_fatom_elcl_d2, f2py_fatom_elcl_d3, f2py_fatom_cxyz_&
     &d0)
      integer f2py_fatom_pos_d0
      integer f2py_fatom_elcl_d0
      integer f2py_fatom_elcl_d1
      integer f2py_fatom_elcl_d2
      integer f2py_fatom_elcl_d3
      integer f2py_fatom_cxyz_d0
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) fatom_elcl(f2py_fatom_elcl_d0,f2py_fatom_elcl_d1,f2py&
     &_fatom_elcl_d2,f2py_fatom_elcl_d3)
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      end subroutine f2pywrap_dcm_fortran_conv_clcl_cxyz 
      subroutine f2pywrap_dcm_fortran_conv_poly_cxyz (fatom_pos, fatom_e&
     &lcl, fatom_cxyz, f2py_fatom_pos_d0, f2py_fatom_elcl_d0, f2py_fatom&
     &_elcl_d1, f2py_fatom_elcl_d2, f2py_fatom_elcl_d3, f2py_fatom_cxyz_&
     &d0)
      integer f2py_fatom_pos_d0
      integer f2py_fatom_elcl_d0
      integer f2py_fatom_elcl_d1
      integer f2py_fatom_elcl_d2
      integer f2py_fatom_elcl_d3
      integer f2py_fatom_cxyz_d0
      real(kind=8) fatom_pos(f2py_fatom_pos_d0)
      real(kind=8) fatom_elcl(f2py_fatom_elcl_d0,f2py_fatom_elcl_d1,f2py&
     &_fatom_elcl_d2,f2py_fatom_elcl_d3)
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      end subroutine f2pywrap_dcm_fortran_conv_poly_cxyz 
      subroutine f2pywrap_dcm_fortran_write_cxyz_file (file_cxyz, fatom_&
     &cxyz, rmse, mae, maxae, f2py_fatom_cxyz_d0)
      real(kind=8) rmse
      real(kind=8) mae
      real(kind=8) maxae
      integer f2py_fatom_cxyz_d0
      character(len=*) file_cxyz
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      end subroutine f2pywrap_dcm_fortran_write_cxyz_file 
      subroutine f2pywrap_dcm_fortran_set_clcl (clcl, f2py_clcl_d0)
      integer f2py_clcl_d0
      real(kind=8) clcl(f2py_clcl_d0)
      end subroutine f2pywrap_dcm_fortran_set_clcl 
      subroutine f2pywrap_dcm_fortran_set_cxyz (cxyz, f2py_cxyz_d0)
      integer f2py_cxyz_d0
      real(kind=8) cxyz(f2py_cxyz_d0)
      end subroutine f2pywrap_dcm_fortran_set_cxyz 
      subroutine f2pywrap_dcm_fortran_set_poly (poly, f2py_poly_d0)
      integer f2py_poly_d0
      real(kind=8) poly(f2py_poly_d0)
      end subroutine f2pywrap_dcm_fortran_set_poly 
      subroutine f2pywrap_dcm_fortran_get_rmse_weighted (nwgt, wght, rms&
     &e, f2py_wght_d0)
      integer nwgt
      real(kind=8) rmse
      integer f2py_wght_d0
      real(kind=8) wght(f2py_wght_d0)
      end subroutine f2pywrap_dcm_fortran_get_rmse_weighted 
      subroutine f2pywrap_dcm_fortran_write_cube_file (file_cube, file_c&
     &mt1, file_cmt2, fnatom, fngrid, forg, fngx, fngy, fngz, faxx, faxy&
     &, faxz, fatom_num, fatom_pos, fvgrid, f2py_forg_d0, f2py_faxx_d0, &
     &f2py_faxy_d0, f2py_faxz_d0, f2py_fatom_num_d0, f2py_fatom_pos_d0, &
     &f2py_fatom_pos_d1, f2py_fvgrid_d0)
      integer fnatom
      integer fngrid
      integer fngx
      integer fngy
      integer fngz
      integer f2py_forg_d0
      integer f2py_faxx_d0
      integer f2py_faxy_d0
      integer f2py_faxz_d0
      integer f2py_fatom_num_d0
      integer f2py_fatom_pos_d0
      integer f2py_fatom_pos_d1
      integer f2py_fvgrid_d0
      character(len=*) file_cube
      character(len=*) file_cmt1
      character(len=*) file_cmt2
      real(kind=8) forg(f2py_forg_d0)
      real(kind=8) faxx(f2py_faxx_d0)
      real(kind=8) faxy(f2py_faxy_d0)
      real(kind=8) faxz(f2py_faxz_d0)
      integer fatom_num(f2py_fatom_num_d0)
      real(kind=8) fatom_pos(f2py_fatom_pos_d0,f2py_fatom_pos_d1)
      real(kind=8) fvgrid(f2py_fvgrid_d0)
      end subroutine f2pywrap_dcm_fortran_write_cube_file 
      subroutine f2pywrap_dcm_fortran_calc_mdcm_grid (fatom_cxyz, fngrid&
     &, fxgrid, fvgrid, f2py_fatom_cxyz_d0, f2py_fxgrid_d0, f2py_fvgrid_&
     &d0, f2py_fvgrid_d1)
      integer fngrid
      integer f2py_fatom_cxyz_d0
      integer f2py_fxgrid_d0
      integer f2py_fvgrid_d0
      integer f2py_fvgrid_d1
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      real(kind=8) fxgrid(f2py_fxgrid_d0)
      real(kind=8) fvgrid(f2py_fvgrid_d0,f2py_fvgrid_d1)
      end subroutine f2pywrap_dcm_fortran_calc_mdcm_grid 
      subroutine f2pywrap_dcm_fortran_calc_mdcm_xval (calc_mdcm_xvalf2py&
     &wrap, calc_mdcm_xval, fatom_cxyz, x, f2py_fatom_cxyz_d0, f2py_x_d0&
     &)
      real(kind=8) calc_mdcm_xval
      integer f2py_fatom_cxyz_d0
      integer f2py_x_d0
      real(kind=8) fatom_cxyz(f2py_fatom_cxyz_d0)
      real(kind=8) x(f2py_x_d0)
      real(kind=8) calc_mdcm_xvalf2pywrap
      end subroutine f2pywrap_dcm_fortran_calc_mdcm_xval 
      subroutine f2pywrap_dcm_fortran_calc_error (nval, val1, val2, rmse&
     &, mae, maxae, f2py_val1_d0, f2py_val2_d0)
      integer nval
      real(kind=8) rmse
      real(kind=8) mae
      real(kind=8) maxae
      integer f2py_val1_d0
      integer f2py_val2_d0
      real(kind=8) val1(f2py_val1_d0)
      real(kind=8) val2(f2py_val2_d0)
      end subroutine f2pywrap_dcm_fortran_calc_error 
      subroutine f2pywrap_dcm_fortran_calc_rmse (calc_rmsef2pywrap, calc&
     &_rmse, nval, val1, val2, f2py_val1_d0, f2py_val2_d0)
      real(kind=8) calc_rmse
      integer nval
      integer f2py_val1_d0
      integer f2py_val2_d0
      real(kind=8) val1(f2py_val1_d0)
      real(kind=8) val2(f2py_val2_d0)
      real(kind=8) calc_rmsef2pywrap
      end subroutine f2pywrap_dcm_fortran_calc_rmse 
      subroutine f2pywrap_dcm_fortran_calc_mse (calc_msef2pywrap, calc_m&
     &se, nval, val1, val2, f2py_val1_d0, f2py_val2_d0)
      real(kind=8) calc_mse
      integer nval
      integer f2py_val1_d0
      integer f2py_val2_d0
      real(kind=8) val1(f2py_val1_d0)
      real(kind=8) val2(f2py_val2_d0)
      real(kind=8) calc_msef2pywrap
      end subroutine f2pywrap_dcm_fortran_calc_mse
      end interface
      external f2pysetupfunc
      external f2py_dcm_fortran_getdims_files_load_cube
      external f2py_dcm_fortran_getdims_atom_num
      external f2py_dcm_fortran_getdims_atom_pos
      external f2py_dcm_fortran_getdims_atom_lcl
      external f2py_dcm_fortran_getdims_grid_imp
      external f2py_dcm_fortran_getdims_grid_pos
      external f2py_dcm_fortran_getdims_grid_val
      external f2py_dcm_fortran_getdims_grid_fit
      external f2py_dcm_fortran_getdims_grid_aff
      external f2py_dcm_fortran_getdims_grid_sid
      external f2py_dcm_fortran_getdims_file_val
      external f2py_dcm_fortran_getdims_file_fit
      external f2py_dcm_fortran_getdims_file_grd
      external f2py_dcm_fortran_getdims_mdcm_clcl
      external f2py_dcm_fortran_getdims_mdcm_poly
      external f2py_dcm_fortran_getdims_mdcm_afrm
      external f2py_dcm_fortran_getdims_mdcm_ftyp
      external f2py_dcm_fortran_getdims_mdcm_nchg
      external f2py_dcm_fortran_getdims_mdcm_cxyz
      external f2py_dcm_fortran_getdims_atom_fit
      call f2pysetupfunc(rp,a02ang,ang2a0,ha2kcal,maxlcl,eps,vdw_scaling&
     &,vdw_radius,verbose,nload,f2py_dcm_fortran_getdims_files_load_cube&
     &,file_load_cxyz,file_load_clcl,file_load_poly,natom,ngrid,nimpt,f2&
     &py_dcm_fortran_getdims_atom_num,f2py_dcm_fortran_getdims_atom_pos,&
     &f2py_dcm_fortran_getdims_atom_lcl,f2py_dcm_fortran_getdims_grid_im&
     &p,f2py_dcm_fortran_getdims_grid_pos,f2py_dcm_fortran_getdims_grid_&
     &val,f2py_dcm_fortran_getdims_grid_fit,f2py_dcm_fortran_getdims_gri&
     &d_aff,f2py_dcm_fortran_getdims_grid_sid,file_nmx,file_ngx,file_ngy&
     &,file_ngz,file_org,file_axx,file_axy,file_axz,f2py_dcm_fortran_get&
     &dims_file_val,f2py_dcm_fortran_getdims_file_fit,f2py_dcm_fortran_g&
     &etdims_file_grd,nchgs,nfrms,nqdim,npdim,npoly,qtotl,mdcm_rlab,f2py&
     &_dcm_fortran_getdims_mdcm_clcl,f2py_dcm_fortran_getdims_mdcm_poly,&
     &f2py_dcm_fortran_getdims_mdcm_afrm,f2py_dcm_fortran_getdims_mdcm_f&
     &typ,f2py_dcm_fortran_getdims_mdcm_nchg,f2py_dcm_fortran_getdims_md&
     &cm_cxyz,use_poly,nafit,f2py_dcm_fortran_getdims_atom_fit,vdw_grid_&
     &min_cutoff,vdw_grid_max_cutoff,f2pywrap_dcm_fortran_load_cube_file&
     &s,read_natm_file,f2pywrap_dcm_fortran_read_cube_file,f2pywrap_dcm_&
     &fortran_in_interaction_belt,load_cxyz_file,load_clcl_file,load_pol&
     &y_file,calc_axis_locl_all,f2pywrap_dcm_fortran_calc_axis_locl_pos,&
     &f2pywrap_dcm_fortran_conv_clcl_cxyz,f2pywrap_dcm_fortran_conv_poly&
     &_cxyz,write_cxyz_files,f2pywrap_dcm_fortran_write_cxyz_file,f2pywr&
     &ap_dcm_fortran_set_clcl,f2pywrap_dcm_fortran_set_cxyz,f2pywrap_dcm&
     &_fortran_set_poly,get_rmse,f2pywrap_dcm_fortran_get_rmse_weighted,&
     &get_rmse_each,write_mdcm_cube_files,f2pywrap_dcm_fortran_write_cub&
     &e_file,f2pywrap_dcm_fortran_calc_mdcm_grid,f2pywrap_dcm_fortran_ca&
     &lc_mdcm_xval,f2pywrap_dcm_fortran_calc_error,f2pywrap_dcm_fortran_&
     &calc_rmse,f2pywrap_dcm_fortran_calc_mse,raise_error,dealloc_all)
      end subroutine f2pyinitdcm_fortran


