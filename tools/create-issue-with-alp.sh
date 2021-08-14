echo '```' >> temp.md
sudo alp json --file=/var/log/envoy/access.log -r -m "/api/admin/clarifications/.+,/admin/clarifications/.+,/api/contestant/benchmark_jobs/.+,/contestant/benchmark_jobs/.+" --sort=sum >> temp.md
echo '```' >> temp.md
gh issue create --title `git rev-parse HEAD` -F temp.md
rm temp.md
