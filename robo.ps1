#Robocopy to create a directory copy with the same structure and security permissions

# /E =
# /LEV:2 = how deep the structure should go
# /SEC =
# /COPYALL =
# /xf * = 

robocopy "source" "target"  /E /LEV:2 /SEC /COPYALL   /xf *

