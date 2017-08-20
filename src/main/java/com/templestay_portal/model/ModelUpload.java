package com.templestay_portal.model;

import java.util.Arrays;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ModelUpload {
    private Integer uploadImageNo   ;    
    private String  fileName       ;
    private Long    fileSize       ;
    private String  contentType    ;

    private byte[]  imageBytes  ;
    private String  imageBase64 ;
    private CommonsMultipartFile image  ;
    
    private Integer programno   ;

    public ModelUpload() {
        super();
    }

    public Integer getUploadImageNo() {
        return uploadImageNo;
    }

    public void setUploadImageNo(Integer uploadImageNo) {
        this.uploadImageNo = uploadImageNo;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Long getFileSize() {
        return fileSize;
    }

    public void setFileSize(Long fileSize) {
        this.fileSize = fileSize;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public byte[] getImageBytes() {
        return imageBytes;
    }

    public void setImageBytes(byte[] imageBytes) {
        this.imageBytes = imageBytes;
    }

    public String getImageBase64() {
        return imageBase64;
    }

    public void setImageBase64(String imageBase64) {
        this.imageBase64 = imageBase64;
    }

    public CommonsMultipartFile getImage() {
        return image;
    }

    public void setImage(CommonsMultipartFile image) {
        this.image = image;
    }

    public Integer getProgramno() {
        return programno;
    }

    public void setProgramno(Integer programno) {
        this.programno = programno;
    }

    @Override
    public String toString() {
        return "ModelUpload [uploadImageNo=" + uploadImageNo + ", fileName="
                + fileName + ", fileSize=" + fileSize + ", contentType="
                + contentType + ", imageBytes=" + Arrays.toString(imageBytes)
                + ", imageBase64=" + imageBase64 + ", image=" + image
                + ", programno=" + programno + "]";
    }
    
}
