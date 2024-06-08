mkdir SpaceColony
cd SpaceColony
touch mission_report.txt alien_encounter.log security_manual.doc confidential_plans.txt
chmod u+rw,g+r,o-rwx mission_report.txt
chmod u+rwx,g+rx,o+x alien_encounter.log
chmod g-w,o-rw alien_encounter.log
chmod u+rwx,g+rx,o+r security_manual.doc
chmod g-w,o-wx security_manual.doc
touch Summer_vacation2023_report.txt project_proposal_final6.doc nature_photography_collection.ppt financial_statement_2023.png 10_recipe_book.jpg travel_journal_italy.png 3rd_client_contract_agreement.pdf party2_playlist.txt research_paper_results.doc Resume_template.doc palindrome.sh
gedit Resume_template.doc
ls *.doc
ls *.doc | grep -E '^[0-9]{2}.*[a-v]\.doc$'