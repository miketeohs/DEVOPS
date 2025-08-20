## https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/repair-a-windows-image?view=windows-11
sfc /scannow
dism /online /Cleanup-image /scanhealth
dism /online /Cleanup-image /checkhealth
dism /online /Cleanup-image /restorehealth