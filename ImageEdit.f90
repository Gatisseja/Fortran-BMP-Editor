PROGRAM main
IMPLICIT NONE
Integer,parameter::dp=selected_real_kind(15,300)
Integer:: a,b,c,d,e,f,g,j,h,N=5,i,w,x,y,z
REAL(kind=dp):: r
 Character(len=1)::line
 Character(len=1):: Map(256,256)

!A bitmap file has 4 sections. 
! 1. Bitmap File Header
! 2. DIB header (BMP info header)
! 3. Colour Table
! 4. Pixel Storage

  type BMPFileHeader
     Character(len=2)::Signature !2 bytes
     integer:: FileSize          !4 bytes
     integer:: Reserved1         !2 bytes
     integer:: Reserved2         !2 bytes
     integer:: pixel_array_loc   !4 bytes
  end type BMPFileHeader
  !Allocate an array of objects
  type (particle) PARTICLES(NP+NP/2)


OPEN(UNIT=11,FILE='fish.bmp',ACTION='READ', &
          & form='unformatted',access='stream',& 
          & status='OLD')
!OPEN(UNIT=12,FILE='Read.txt',ACTION='WRITE')


Do i=1,50
 !read(11,fmt=*) only for formatted data
     READ(11) line
     WRITE(*,*) line, ichar(line)
END DO
stop
DO i=1,765
  do j=1,256
     IF (i==765) print*, 'j',j
     READ(11) line
     WRITE(*,*) ichar(line)
  END DO
END DO

!READ(11,*) line 
!print*, line

!READ(11,*) r


!print*, r



CLOSE(11)
END PROGRAM main
