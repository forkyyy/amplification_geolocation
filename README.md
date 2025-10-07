# Amplification Research — Defensive Artifacts & Guidance

> This repository has been sanitized. Payloads and offensive scripts were removed.
> The current purpose is documentation, ethical research methodology and mitigation guidance.

## Overview
This project collects methodological notes on reflector/amplifier analysis (e.g. NTP, SSDP, WSD) focused on **detection**, **classification**, and **mitigation**. It does not include exploitation tools or operational lists intended for abuse.

## Sources and lab advice
If you need IP blocklists for purely lab/testing purposes, use reputable public datasets and run tests only in controlled environments. Do not use data from this repository for operational attacks.

## Mitigation recommendations (summary)
- Rate-limit suspicious UDP traffic at edge routers.
- Detect reflectors by payload signatures and response patterns.
- Coordinate with ISPs and CERTs to remediate exposed services.
- Publish anonymized findings through responsible channels.

## Responsible use
Research on amplifiers must be performed under authorization or within isolated labs. Public disclosure of operational reflector lists is discouraged unless anonymized and coordinated with affected parties.

## Contact
For collaboration or to request anonymized data for research: forkcontato@gmail.com
