function genes = create_genes(panjang)
random_number = randi([32,126],1,panjang);
genes = char(random_number);
end
