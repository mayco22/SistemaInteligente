package WekaTrei;


import weka.classifiers.Evaluation;
import weka.classifiers.functions.MultilayerPerceptron;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;

public class MutiTreina {

    /**
     * @param teste
     * @return 
     * @throws java.lang.Exception
     */
    public String []Treinador() throws Exception {

        DataSource source = new DataSource("C:/Users/mayco/Documents/NetBeansProjects/ProjetoWeka/web/BASEnova3.arff");
        Instances dataset = source.getDataSet();
        dataset.setClassIndex(dataset.numAttributes()-1);
        
        MultilayerPerceptron mr = new MultilayerPerceptron();
        mr.buildClassifier(dataset);
        Evaluation eval = new Evaluation(dataset);
        eval.evaluateModel(mr, dataset);
        
        String neuronio = mr.toString();
        double errorrate = eval.errorRate();
        String summary = eval.toSummaryString();
        
        String Resp[] = {neuronio,summary,String.valueOf(errorrate)};
        
        return Resp; 
    }
}
