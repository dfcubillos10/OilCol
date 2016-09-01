/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.models;


import com.example.services.ReporteService;
import com.sun.istack.NotNull;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author fa.vera10
 */
@Entity
public class ConsumoEnergia implements Serializable
{
 private static final long serialVersionUID = 1L;
 
 private final static String tipo = "SENSOR_COSNUMO_ENERGIA"; 
 
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;   
    
    @NotNull
    @Column(name = "consumo")
    private double consumo;
    
    
    
    
    
    public ConsumoEnergia (){}
    
    public ConsumoEnergia (double consumo)
    {
     
        consumo = consumo; 
    }

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

      /**
     * @return the consumo
     */
    public double getConsumoEnergia() {
        return consumo;
    }

    /**
     * @param consumo the consumo to set
     */
    public void setConsumoEnergia (double consumo) {
        this.consumo = consumo;
    }
    public void crearReporte(Long idSensor, Long idPozo, String Descripcion)
    {
        ReporteDTO x = new ReporteDTO();
        x.setIdSensor(this.getId());
        x.setIdPozo(idPozo);
        x.setDescripcion(Descripcion);
        x.setTipoSensor(tipo);
        ReporteService rs = new ReporteService();
        rs.createReporte(x); 
    }
}
