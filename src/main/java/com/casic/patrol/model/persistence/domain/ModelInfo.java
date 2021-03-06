package com.casic.patrol.model.persistence.domain;

// Generated by Hibernate Tools

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * ModelInfo .
 * 
 * @author Lingo
 */
@Entity
@Table(name = "MODEL_INFO")
@SequenceGenerator(name = "CD_SEQ_MODEL_INFO",sequenceName = "CD_SEQ_MODEL_INFO",allocationSize = 1,initialValue = 1)

public class ModelInfo implements java.io.Serializable {
    private static final long serialVersionUID = 0L;

    /** null. */
    private Long id;

    /** null. */
    private String code;

    /** null. */
    private String name;

    /** null. */
    private String type;

    /** null. */
    private String tenantId;

    /** . */
    private Set<ModelField> modelFields = new HashSet<ModelField>(0);

    public ModelInfo() {
    }

    public ModelInfo(Long id) {
        this.id = id;
    }

    public ModelInfo(Long id, String code, String name, String type,
            String tenantId, Set<ModelField> modelFields) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.type = type;
        this.tenantId = tenantId;
        this.modelFields = modelFields;
    }

    /** @return null. */
    @Id
    @Column(name = "ID", unique = true, nullable = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CD_SEQ_MODEL_INFO")

    public Long getId() {
        return this.id;
    }

    /**
     * @param id
     *            null.
     */
    public void setId(Long id) {
        this.id = id;
    }

    /** @return null. */
    @Column(name = "CODE", length = 200)
    public String getCode() {
        return this.code;
    }

    /**
     * @param code
     *            null.
     */
    public void setCode(String code) {
        this.code = code;
    }

    /** @return null. */
    @Column(name = "NAME", length = 200)
    public String getName() {
        return this.name;
    }

    /**
     * @param name
     *            null.
     */
    public void setName(String name) {
        this.name = name;
    }

    /** @return null. */
    @Column(name = "TYPE", length = 50)
    public String getType() {
        return this.type;
    }

    /**
     * @param type
     *            null.
     */
    public void setType(String type) {
        this.type = type;
    }

    /** @return null. */
    @Column(name = "TENANT_ID", length = 64)
    public String getTenantId() {
        return this.tenantId;
    }

    /**
     * @param tenantId
     *            null.
     */
    public void setTenantId(String tenantId) {
        this.tenantId = tenantId;
    }

    /** @return . */
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "modelInfo")
    public Set<ModelField> getModelFields() {
        return this.modelFields;
    }

    /**
     * @param modelFields
     *            .
     */
    public void setModelFields(Set<ModelField> modelFields) {
        this.modelFields = modelFields;
    }
}
