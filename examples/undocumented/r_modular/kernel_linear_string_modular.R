library(shogun)

fm_train_dna <- as.matrix(read.table('../data/fm_train_dna.dat'))
fm_test_dna <- as.matrix(read.table('../data/fm_test_dna.dat'))

# linear_string
print('LinearString')

feats_train <- StringCharFeatures("DNA")
dump <- feats_train$set_features(feats_train, fm_train_dna)
feats_test <- StringCharFeatures("DNA")
dump <- feats_test$set_features(feats_test, fm_test_dna)

kernel <- LinearStringKernel(feats_train, feats_train)

km_train <- kernel$get_kernel_matrix()
dump <- kernel$init(kernel, feats_train, feats_test)
km_test <- kernel$get_kernel_matrix()
