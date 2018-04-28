/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.SistemaIteligente.Processamento;

import java.text.DecimalFormat;
import weka.classifiers.functions.LinearRegression;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.converters.ConverterUtils;
import weka.core.Instances;

/**
 *
 * @author mayco
 */
public class Processamento {
    private Instances instancias;
    
    public void carregaBaseWekaArq(int nIndex, String caminho) throws Exception {
        // TODO code application logic here
        ConverterUtils.DataSource ds = new ConverterUtils.DataSource(caminho);
        instancias = ds.getDataSet();
        instancias.setClassIndex(nIndex);
    }
    
    public void linearRegressao() throws Exception{
        LinearRegression lr = new LinearRegression();
        //Criação de tabela de probabilidade
        lr.buildClassifier(instancias);
        
        //Criação de novo registro
        Instance novo = new DenseInstance(instancias.numAttributes());
        novo.setDataset(instancias);
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        novo.setValue(0, "");
        
        //Previsao
        double resultado[] = lr.distributionForInstance(novo);
        DecimalFormat df = new DecimalFormat("#,###.0000");
        System.out.println("sim " + df.format(resultado[0]));
        System.out.println("nao " + df.format(resultado[1]));
    }
}

