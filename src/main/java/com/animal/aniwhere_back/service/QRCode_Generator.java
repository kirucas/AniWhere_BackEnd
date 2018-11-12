package com.animal.aniwhere_back.service;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.HashMap;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

public class QRCode_Generator {

	public static String createQRCodeImage(String codeDataString, File path, String fileType) {

		File qr_code_name = new File(path.getAbsolutePath() + File.separator + AwsS3Utils.namingForS3("QRCodes") + "." + fileType);
		
		if(!qr_code_name.getParentFile().exists())
			qr_code_name.getParentFile().mkdir();
		
		int size = 150;

		try {

			HashMap<EncodeHintType, Object> hintMap = new HashMap<>();

			hintMap.put(EncodeHintType.CHARACTER_SET, "UTF-8");

			hintMap.put(EncodeHintType.MARGIN, 1);
			hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);

			QRCodeWriter qrCodeWriter = new QRCodeWriter();
			BitMatrix bitMatrix = qrCodeWriter.encode(codeDataString, BarcodeFormat.QR_CODE, size, size, hintMap);

			int bitWidth = bitMatrix.getWidth();

			BufferedImage image = new BufferedImage(bitWidth, bitWidth, BufferedImage.TYPE_INT_RGB);
			image.createGraphics();

			Graphics2D graphics = (Graphics2D) image.getGraphics();
			graphics.setColor(Color.WHITE);
			graphics.fillRect(0, 0, bitWidth, bitWidth);
			graphics.setColor(Color.BLACK);
			
			for(int i=0; i<bitWidth;i++) {
				for(int j=0;j<bitWidth;j++) {
					if(bitMatrix.get(i, j)) {
						graphics.fillRect(i, j, 1, 1);
					}
				}
			}
			
			ImageIO.write(image, fileType, qr_code_name);
			
			System.out.println(AwsS3Utils.s3PutObject(qr_code_name.getAbsolutePath(), "QRCodes"));

		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}

		return "success";
	}

}
