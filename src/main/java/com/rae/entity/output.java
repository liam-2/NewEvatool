package com.rae.entity;

import java.util.List;

public class output {
    int methodNum = 0;
    int constructorNum = 0;
    int publicNum = 0;
    int privateNum = 0;
    int protectNum = 0;
    int defaultNum = 0;
    int staticNum = 0;
    int fieldNum = 0;
    int publicFieldNum = 0;
    int privateFieldNum = 0;
    int protectFieldNum = 0;
    int defaultFieldNum = 0;
    int staticFieldNum = 0;
    String superClass = null;
    List<String> importArr = null;
    List<String> interfacesArr = null;
    List<String> allClassesArr = null;
    List<String> MethodsArr = null;
    List<String> FieldsArr = null;

    public int getMethodNum() {
        return methodNum;
    }

    public void setMethodNum(int methodNum) {
        this.methodNum = methodNum;
    }

    public int getConstructorNum() {
        return constructorNum;
    }

    public void setConstructorNum(int constructorNum) {
        this.constructorNum = constructorNum;
    }

    public int getPublicNum() {
        return publicNum;
    }

    public void setPublicNum(int publicNum) {
        this.publicNum = publicNum;
    }

    public int getPrivateNum() {
        return privateNum;
    }

    public void setPrivateNum(int privateNum) {
        this.privateNum = privateNum;
    }

    public int getProtectNum() {
        return protectNum;
    }

    public void setProtectNum(int protectNum) {
        this.protectNum = protectNum;
    }

    public int getDefaultNum() {
        return defaultNum;
    }

    public void setDefaultNum(int defaultNum) {
        this.defaultNum = defaultNum;
    }

    public int getStaticNum() {
        return staticNum;
    }

    public void setStaticNum(int staticNum) {
        this.staticNum = staticNum;
    }

    public int getFieldNum() {
        return fieldNum;
    }

    public void setFieldNum(int fieldNum) {
        this.fieldNum = fieldNum;
    }

    public int getPublicFieldNum() {
        return publicFieldNum;
    }

    public void setPublicFieldNum(int publicFieldNum) {
        this.publicFieldNum = publicFieldNum;
    }

    public int getPrivateFieldNum() {
        return privateFieldNum;
    }

    public void setPrivateFieldNum(int privateFieldNum) {
        this.privateFieldNum = privateFieldNum;
    }

    public int getProtectFieldNum() {
        return protectFieldNum;
    }

    public void setProtectFieldNum(int protectFieldNum) {
        this.protectFieldNum = protectFieldNum;
    }

    public int getDefaultFieldNum() {
        return defaultFieldNum;
    }

    public void setDefaultFieldNum(int defaultFieldNum) {
        this.defaultFieldNum = defaultFieldNum;
    }

    public int getStaticFieldNum() {
        return staticFieldNum;
    }

    public void setStaticFieldNum(int staticFieldNum) {
        this.staticFieldNum = staticFieldNum;
    }

    public List<String> getImportArr() {
        return importArr;
    }

    public void setImportArr(List<String> importArr) {
        this.importArr = importArr;
    }

    public List<String> getInterfacesArr() {
        return interfacesArr;
    }

    public void setInterfacesArr(List<String> interfacesArr) {
        this.interfacesArr = interfacesArr;
    }

    public String getSuperClassesArr() {
        return superClass.toString();
    }

    public void setSuperClassesArr(String superClass) {
        this.superClass = superClass;
    }

    public List<String> getAllClassesArr() {
        return allClassesArr;
    }

    public void setAllClassesArr(List<String> allClassesArr) {
        this.allClassesArr = allClassesArr;
    }

    public List<String> getMethodsArr() {
        return MethodsArr;
    }

    public void setMethodsArr(List<String> methodsArr) {
        MethodsArr = methodsArr;
    }

    public List<String> getFieldsArr() {
        return FieldsArr;
    }

    public void setFieldsArr(List<String> fieldsArr) {
        FieldsArr = fieldsArr;
    }
}
