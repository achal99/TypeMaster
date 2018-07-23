// WRITTEN BY MILO HARTSOE
// @PARAM say_sentence_ptr - pointer to word that is space seprated and newline terminated (has 32 and 10 as last two values)
// @PARAM say_sentence_ret - return iar

say_sentence_say_word         cp say_sentence_prev_word_ptr say_sentence_ptr
                          cp say_sentence_curr_ptr say_sentence_ptr
say_sentence_next_word        cpfa say_sentence_letter 0 say_sentence_curr_ptr
                          be say_sentence_end say_sentence_letter say_sentence_ascii_newline
                          be say_sentence_caller say_sentence_letter say_sentence_ascii_space
                          add say_sentence_curr_ptr say_sentence_curr_ptr say_sentence_num1
                          be say_sentence_next_word 0 0
say_sentence_caller           cp text_to_speech_word_ptr say_sentence_prev_word_ptr
                          call text_to_speech_talk text_to_speech_return
                          add say_sentence_curr_ptr say_sentence_curr_ptr say_sentence_num1
                          cp say_sentence_prev_word_ptr say_sentence_curr_ptr
                          be say_sentence_next_word 0 0
say_sentence_end              ret say_sentence_ret




say_sentence_ptr              say_sentence_word
say_sentence_curr_ptr         say_sentence_word
say_sentence_prev_word_ptr    say_sentence_word
say_sentence_letter           0
say_sentence_ascii_newline    10
say_sentence_ascii_space      32
say_sentence_num1             1
say_sentence_ret              0

// WORD BUFFER
say_sentence_word             84
                          69
                          88
                          84
                          32
                          65
                          66
                          65
                          78
                          68
                          79
                          78
                          32
                          10

// #include text_to_speech.e
