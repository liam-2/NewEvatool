package com.rae.entity;

public class ChartInfo {
    private String projectname = "";
    private int lOC = 0;
    private int NLOC = 0;
    private int maxmethod = 0;
    private int cyclecomplexity = 0;
    private int allmethods = 0;
    private int publicmethods = 0;
    private int privatemethods = 0;
    private int commentmethods = 0;
    private int deepmethods = 0;
    private int dirs = 0;
    private int files = 0;


    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname;
    }

    public int getMaxmethod() {
        return maxmethod;
    }

    public void setMaxmethod(int maxmethod) {
        this.maxmethod = maxmethod;
    }

    public int getLOC() {
        return lOC;
    }

    public void setLOC(int LOC) {
        this.lOC = LOC;
    }

    public int getNLOC() {
        return NLOC;
    }

    public void setNLOC(int NLOC) {
        this.NLOC = NLOC;
    }

    public int getCyclecomplexity() {
        return cyclecomplexity;
    }

    public void setCyclecomplexity(int cyclecomplexity) {
        this.cyclecomplexity = cyclecomplexity;
    }

    public int getAllmethods() {
        return allmethods;
    }

    public void setAllmethods(int allmethods) {
        this.allmethods = allmethods;
    }

    public int getPublicmethods() {
        return publicmethods;
    }

    public void setPublicmethods(int publicmethods) {
        this.publicmethods = publicmethods;
    }

    public int getPrivatemethods() {
        return privatemethods;
    }

    public void setPrivatemethods(int privatemethods) {
        this.privatemethods = privatemethods;
    }

    public int getCommentmethods() {
        return commentmethods;
    }

    public void setCommentmethods(int commentmethods) {
        this.commentmethods = commentmethods;
    }

    public int getDeepmethods() {
        return deepmethods;
    }

    public void setDeepmethods(int deepmethods) {
        this.deepmethods = deepmethods;
    }

    public int getDirs() {
        return dirs;
    }

    public void setDirs(int dirs) {
        this.dirs = dirs;
    }

    public int getFiles() {
        return files;
    }

    public void setFiles(int files) {
        this.files = files;
    }

}
