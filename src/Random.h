#ifndef RANDOM_H
#define RANDOM_H

#include <vector>
#include <cstdlib>
#include <ctime>
#include <cmath>

using namespace std;



#define MULTIPLIER 69069
#define SHIFT          1
#define MODULUS    256*256*256*128
#define INVMOD     ( (double) 1 / ((double) MODULUS)) / ((double) 2)
#define PI         3.14159265


class Random
{
 public:
  Random(unsigned int seed);
  ~Random(void);

  unsigned int ChangeSeed(unsigned int seed);
  double Unif01(void);
  double Norm01(void);
  double Exponential(double lambda);
  int Poisson(double lambda);
  int Binomial(int n,double p);
  int Discrete(const vector<double> &prob);
  double Gamma(double p,double lambda);
  double ChiSquared(double nu);
  double InverseGamma(double p,double lambda);
  double Beta(double alpha,double beta);
  vector<double> MultiGaussian(const vector<vector<double> > &Sigma,
			       const vector<double> &mean);
  vector<vector<double> > Wishart(double nu,const vector<vector<double> > &V);
  vector<vector<double> > StandardWishart(int dim,double nu);
  vector<vector<double> > InverseWishart(double nu,const vector<vector<double> > &V);
  vector<vector<double> > StandardInverseWishart(int dim,double nu);
  vector<vector<double> > CorrelationStandardInverseWishart(int dim,double nu);


  double PotentialGaussian(double variance,double mean,double x);
  double PotentialPoisson(double lambda,int x);
  double PotentialBinomial(int n,double p,int x);
  double PotentialGamma(double p,double lambda,double x);
  double PotentialInverseGamma(double p,double lambda,double x);
  double PotentialBeta(double alpha,double beta,double x);
  double PotentialMultiGaussian(const vector<vector<double> > &Sigma,
				const vector<double> &mean,
				const vector<double> &x);
  double PotentialMultiGaussian(const vector<vector<double> > &SigmaInv,
				double determinant,const vector<double> &mean,
				const vector<double> &x);
  double PotentialMultiGaussian(const vector<vector<double> > &Sigma,
				const vector<double> &x);
  double PotentialMultiGaussian(const vector<vector<double> > &SigmaInv,
				double determinant,const vector<double> &x);
  double PotentialTScaled(double var,double mean,double df,double x);
  double PotentialT(double df,double x);
  double PotentialCauchy(double var,double mean,double x);
  double PotentialWishart(double nu,const vector<vector<double> > &V,const vector<vector<double> > &x);
  double PotentialStandardWishart(double nu,const vector<vector<double> > &x);
  double PotentialInverseWishart(double nu,const vector<vector<double> > &V,const vector<vector<double> > &x);
  double PotentialStandardInverseWishart(double nu,const vector<vector<double> > &x);
  double PotentialCorrelationStandardInverseWishart(double nu,const vector<vector<double> > &x);

  vector<int> Permutation(int n);
  
  double lnGamma(double x);

 private:
  unsigned int seedValue;
  void setseed();
  int haveNorm01;
  double norm;
};

#endif
