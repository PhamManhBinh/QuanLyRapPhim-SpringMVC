package xemphim.util;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class Util {
	
	public static boolean isImage(String fileName) {
		if (fileName.endsWith(".jpg") || fileName.endsWith(".png") || fileName.endsWith(".gif")
				|| fileName.endsWith(".jpeg")) {
			return true;
		}
		return false;
	}

	public static String uploadFile(MultipartFile multipartFile,String realPathtoUploads) {

		if (!new File(realPathtoUploads).exists()) {
			new File(realPathtoUploads).mkdir();
		}

		String orgName = multipartFile.getOriginalFilename();
		String filePath = realPathtoUploads + orgName;
		File dest = new File(filePath);
		try {
			multipartFile.transferTo(dest);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orgName;

	}
}
