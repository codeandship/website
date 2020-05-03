---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true

mp3: https://cdn.codeandship.rocks/podcast/cas_0{{.Name}}.mp3
length: 000000
duration: 00:00:00
Description: "Folge {{.Name}}"
episode: {{.Name}}
---

**Crew**

{{< hosts >}}
    {{< show >}}
    {{< host_ingmar >}}
    {{< host_jonathan >}}
{{< /hosts >}}

## Shownotes