#   use UGER
#   ish -l h_vmem=3g -l os=RedHat7 -pe smp 12 -R y -binding linear:12

source /broad/software/scripts/useuse
use Google-Cloud-SDK
gcloud auth login dchafamo@broadinstitute.org

SRC=$1
DEST=$2
BASENAME=$3

echo 'Executing command: ' gsutil -m cp -c -n -L "$BASENAME.log" -r "$SRC" "$DEST"

until gsutil -m cp -c -n -L "$BASENAME.log" -r "$SRC" "$DEST"; do
  sleep 1 && echo "Reattempting copy"
done

#   nohup bash copy_to_gcp.sh /ahg/regev_gp_transfers/SL-NVA/211008_SL-NVU_0307_BH2MWYDMXY gs://fc-secure-1620151c-e00c-456d-9daf-4d222e1cab18/gut_eqtl/bcl_GIDER/211008_SL-NVU_0307_BH2MWYDMXY 211008_SL-NVU_0307_BH2MWYDMXY &> 211008_SL-NVU_0307_BH2MWYDMXY.out &

#    /ahg/regev_nextseq/Data03/210729_NB501583_0884_AHJT5MBGXJ     # done
#    /ahg/regev_nextseq/Data02/210729_NB501337_0894_AHTHNYBGXJ     # done
#    /ahg/regev_nextseq/Data/210726_NB501164_1265_AHJLCVBGXJ       # done
#    /ahg/regev_nextseq/Data03/210802_NB501583_0886_AHLVFWBGXJ     # done
#    /ahg/regev_nextseq/Data03/210823_NB501583_0891_AHLVFJBGXJ     # done
#    /ahg/regev_nextseq/Data/210823_NB501164_1275_AHLY3KBGXJ       # done
#    /ahg/regev_nextseq/Data/211015_NB501164_1301_AH7MMTBGXK       # done
#    /ahg/regev_nextseq/Data02/211015_NB501337_0916_AH7MMWBGXK     # done
#
#    /ahg/regev_gp_transfers/SL-NVA/210813_SL-NVV_0246_AHHMKNDRXY  # done
#    /ahg/regev_gp_transfers/SL-NVA/210910_SL-NVZ_0156_BHK5CKDRXY  # done
#    /ahg/regev_gp_transfers/SL-NVA/210917_SL-NVN_0520_BH3JGTDMXY  # done
#    /ahg/regev_gp_transfers/SL-NVA/211008_SL-NVU_0307_BH2MWYDMXY  #
#    /ahg/regev_gp_transfers/SL-NVA/211106_SL-NSE_0209_BH523FDMXY  #
