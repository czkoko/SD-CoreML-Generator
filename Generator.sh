cd `dirname $0`
echo ""
echo "        Stable Diffusion CoreML Model Multi-resolution Generation Tool"
echo "                    (Compatible with CoremlTools 7.0)"
echo "               https://github.com/czkoko/SD-CoreML-Generator"
echo ""
read -p "  ✡︎  Enter The SD 1.5 Model Path >> " mPath

m512x768=${mPath}"-512x768"
mkdir ${m512x768}
cp -r ./512x768/ ${m512x768}
ln -s ${mPath}/merges.txt ${m512x768}/merges.txt
ln -s ${mPath}/vocab.json ${m512x768}/vocab.json
ln -s ${mPath}/TextEncoder.mlmodelc ${m512x768}/TextEncoder.mlmodelc
ln -s ${mPath}/Unet.mlmodelc/analytics ${m512x768}/Unet.mlmodelc/analytics
ln -s ${mPath}/Unet.mlmodelc/weights ${m512x768}/Unet.mlmodelc/weights
ln -s ${mPath}/VAEDecoder.mlmodelc/analytics ${m512x768}/VAEDecoder.mlmodelc/analytics
ln -s ${mPath}/VAEDecoder.mlmodelc/weights ${m512x768}/VAEDecoder.mlmodelc/weights
ln -s ${mPath}/VAEEncoder.mlmodelc/analytics ${m512x768}/VAEEncoder.mlmodelc/analytics
ln -s ${mPath}/VAEEncoder.mlmodelc/weights ${m512x768}/VAEEncoder.mlmodelc/weights

m768x512=${mPath}"-768x512"
mkdir ${m768x512}
cp -r ./768x512/ ${m768x512}
ln -s ${mPath}/merges.txt ${m768x512}/merges.txt
ln -s ${mPath}/vocab.json ${m768x512}/vocab.json
ln -s ${mPath}/TextEncoder.mlmodelc ${m768x512}/TextEncoder.mlmodelc
ln -s ${mPath}/Unet.mlmodelc/analytics ${m768x512}/Unet.mlmodelc/analytics
ln -s ${mPath}/Unet.mlmodelc/weights ${m768x512}/Unet.mlmodelc/weights
ln -s ${mPath}/VAEDecoder.mlmodelc/analytics ${m768x512}/VAEDecoder.mlmodelc/analytics
ln -s ${mPath}/VAEDecoder.mlmodelc/weights ${m768x512}/VAEDecoder.mlmodelc/weights
ln -s ${mPath}/VAEEncoder.mlmodelc/analytics ${m768x512}/VAEEncoder.mlmodelc/analytics
ln -s ${mPath}/VAEEncoder.mlmodelc/weights ${m768x512}/VAEEncoder.mlmodelc/weights

echo ""
echo "  ✔︎  Successfully generate 512x768 and 768x512 Pixels models"