; s[0:4] = NFILT NTEMP NZ NOBJ
; 6 8 263 183
; Read with IDL:
; Template & catalog fluxes
 openr,lun,'OUTPUT/photz1.tempfilt',/swap_if_big_endian,/get_lun
 s = lonarr(4) & readu,lun,s
 NFILT=s[0] & NTEMP = s[1] & NZ = s[2] & NOBJ = s[3]
 tempfilt = dblarr(NFILT,NTEMP,NZ)
 lc = dblarr(NFILT) ; central wavelengths
 zgrid = dblarr(NZ)
 fnu = dblarr(NFILT,NOBJ)
 efnu = dblarr(NFILT,NOBJ)
 readu,lun,tempfilt,lc,zgrid,fnu,efnu
 close,/all
; 
; Coeffs (OBS_SED)
 openr,lun,'OUTPUT/photz1.coeff',/get_lun,/swap_if_big_endian
 s = lonarr(4) & readu,lun,s
 NFILT=s[0] & NTEMP = s[1] & NZ = s[2] & NOBJ = s[3]
 coeffs = dblarr(NTEMP,NOBJ)
 izbest = lonarr(NOBJ)
 tnorm = dblarr(NTEMP)
 readu,lun,coeffs,izbest,tnorm 
 close,/all
; 
; Full templates (TEMP_SED)
 openr,lun,'OUTPUT/photz1.temp_sed',/get_lun,/swap_if_big_endian
 s = lonarr(3) & readu,lun,s
 NTEMP=s[0] & NTEMPL = s[1] & NZ = s[2]
 templam = dblarr(NTEMPL)
 temp_seds = dblarr(NTEMPL,NTEMP)
 da = dblarr(NZ)
 db = dblarr(NZ)
 readu,lun,templam,temp_seds,da,db 
 close,/all
; 
; POFZ
 openr,lun,'OUTPUT/photz1.pz',/get_lun,/swap_if_big_endian
 s = lonarr(2) & readu,lun,s
 NZ = s[0] & NOBJ = s[1]
 chi2fit = dblarr(NZ,NOBJ)
 readu,lun,chi2fit
 NK = 0L & readu,lun,NK
 kbins = dblarr(NK) & priorzk = dblarr(NZ,NK) & kidx = lonarr(NOBJ)
 readu,lun,kbins,priorzk,kidx 
 close,/all
; 
; Stored z values
 openr,lun,'OUTPUT/photz1.zbin',/get_lun,/swap_if_big_endian
 NOBJ = lonarr(1) & readu,lun,NOBJ
 z_a = dblarr(NOBJ) & z_p = z_a & z_m1 = z_a & z_m2 = z_a & z_peak = z_a
 readu,lun,z_a,z_p,z_m1,z_m2,z_peak
 close,/all

 end
