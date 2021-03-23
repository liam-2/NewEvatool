package com.rae.entity;

import java.util.ArrayList;
import java.util.List;

public class DiagramNode {
    private List<NodeInfo> nodes = new ArrayList<>();
    private List<Links> links = new ArrayList<>();
    private List<categories> categories = new ArrayList<>();

    public List<categories> getCategories() {
        return categories;
    }

    public void setCategories(List<categories> categories) {
        this.categories = categories;
    }

    public List<NodeInfo> getNodes() {
        return nodes;
    }

    public void setNodes(List<NodeInfo> nodes) {
        this.nodes = nodes;
    }

    public List<Links> getLinks() {
        return links;
    }

    public void setLinks(List<Links> links) {
        this.links = links;
    }


}
