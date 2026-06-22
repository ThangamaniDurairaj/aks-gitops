{{- /*
Helm template helpers for the myapp chart.
*/ -}}

{{/*
Return the name of the chart. If .Values.nameOverride is set, it will be used instead.
*/}}
{{- define "myapp.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the full name of the release, combining the chart name and release name.
*/}}
{{- define "myapp.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" $name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the chart name with version for chart label.
*/}}
{{- define "myapp.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}