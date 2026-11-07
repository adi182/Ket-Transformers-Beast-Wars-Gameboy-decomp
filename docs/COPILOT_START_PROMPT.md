Paste this into GitHub Copilot Chat with the repository open and Agent mode selected:

Read `.github/copilot-instructions.md` and all four documents in `docs/`. Inspect the workspace without modifying anything. Verify the ROM hash and inventory the current tools, split banks, disassembly and extracted graphics. Report mismatches between the notes and actual files.

Then investigate the first task in `docs/NEXT_STEPS.md`: inspect bank 0 around `$007A` and helper `$124C`. Trace the exact calling convention and transfer behaviour using disassembly and raw bytes. Do not guess. After evidence is established, update `docs/KNOWN_ROUTINES.md` and `docs/RESEARCH_LOG.md`. Do not modify `rom/original.gbc` or overwrite existing scripts. Finish with a concise summary of findings, evidence paths/line ranges and changed files.
