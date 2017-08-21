package com.templestay_portal.start;

import static org.junit.Assert.*;

import javax.imageio.ImageIO;

import org.apache.commons.io.FilenameUtils;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.image.BufferedImage;
import java.io.*;
import java.nio.file.Files;
import java.util.Base64;

import com.templestay_portal.model.ModelUpload;
import com.templestay_portal.service.IServiceUpload;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class TestServiceUpload {
    
    private static ApplicationContext context = null;
    private static IServiceUpload service = null;
    
    
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        
        context= new ClassPathXmlApplicationContext("file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml");
        service=context.getBean(IServiceUpload.class);
    }

    @Test
    public void test_insertPhoto() {   
        try {
            for(int programno=34; programno <= 36; programno++){
                for(int imgno=1; imgno <= 3; imgno++){            
            
                    File file = new File("src/main/webapp/resources/templestay_img/"+ Integer.toString(programno) +"_"+ Integer.toString(imgno) +".jpg");
                    
                    BufferedImage originalImage = ImageIO.read(file.getAbsoluteFile());
        
                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    ImageIO.write(originalImage, "jpg", baos);
                    baos.flush();
                    byte[] photoBytes = baos.toByteArray();
            
            
                    ModelUpload fileupload = new ModelUpload();
    
                    fileupload.setProgramno(programno);
                    
                    fileupload.setFileName( file.getName() );
                    fileupload.setFileSize( file.length() );
                    fileupload.setContentType( Files.probeContentType( file.toPath() ) );
                    fileupload.setImageBytes(photoBytes);
                    fileupload.setImageBase64( Base64.getEncoder().encodeToString(baos.toByteArray()) );
                    
                    int result = service.insertPhoto(fileupload);
                    assertNotSame(-1, result);
                    
                    Robot tRobot = null;
                    try {
                        tRobot = new Robot();
                    } catch (AWTException e) {
                    }
                    tRobot.delay(1000);  
                }
            }
        } catch (IOException e) {
            e.printStackTrace();

        }
    }

}
