{{- define "docker-uri" -}}
{{- $repo := .files.Get (printf "images/integration/%s.yaml" .app) | fromYaml -}}
{{ $repo.repository}}:{{ $repo.tag }}
{{- end -}}
