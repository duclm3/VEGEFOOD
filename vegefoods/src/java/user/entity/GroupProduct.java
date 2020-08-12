/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.entity;

/**
 *
 * @author Le Minh Duc
 */
public class GroupProduct {
    String groupId;
    String groupName;
    String imageLink;
    String description;
    boolean groupStatus;

    public GroupProduct() {
    }

    public GroupProduct(String groupId, String groupName, String imageLink, String description, boolean groupStatus) {
        this.groupId = groupId;
        this.groupName = groupName;
        this.imageLink = imageLink;
        this.description = description;
        this.groupStatus = groupStatus;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isGroupStatus() {
        return groupStatus;
    }

    public void setGroupStatus(boolean groupStatus) {
        this.groupStatus = groupStatus;
    }
    
}
