#!/usr/bin/env bash
python classifier.py \
  --task_name=setiment \
  --do_train=true \
  --do_eval=true \
  --data_dir=$BERT_DATA \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=4 \
  --learning_rate=2e-5 \
  --num_train_epochs=7.0 \
  --output_dir=$OUTPUT_DIR