#include "clSTCHelper.hpp"

namespace
{
void DoSetCaretAt(wxStyledTextCtrl* ctrl, long pos)
{
    ctrl->SetCurrentPos(pos);
    ctrl->SetSelectionStart(pos);
    ctrl->SetSelectionEnd(pos);
    int line = ctrl->LineFromPosition(pos);
    if(line >= 0) {
        // This is needed to unfold the line if it were folded
        // The various other 'EnsureVisible' things don't do this
        ctrl->EnsureVisible(line);
    }
}
} // namespace

void clSTCHelper::ScrollRange(wxStyledTextCtrl* ctrl, int selection_start, int selection_end)
{
#if wxCHECK_VERSION(3, 1, 0)
    // ensure the selection is visible
    if(selection_end != selection_start) {
        ctrl->ScrollRange(selection_start, selection_end);
    }
    ctrl->EnsureCaretVisible(); // incase we are inside a folded area
#else
    // implement a wx30 version for ScrollRange()
    wxUnusedVar(selection_start);
    wxUnusedVar(selection_end);
    ctrl->EnsureCaretVisible(); // incase we are inside a folded area
#endif
}

void clSTCHelper::CenterLine(wxStyledTextCtrl* ctrl, int line, int col)
{
    int caret_pos = ctrl->PositionFromLine(line);
    if(col != wxNOT_FOUND) {
        // calculate the position
        caret_pos += col;
    }

    // move the caret to the requested line
    ctrl->EnsureVisible(line); // make sure the requested line is visible
    SetCaretAt(ctrl, caret_pos);

    // center that line
    int linesOnScreen = ctrl->LinesOnScreen();
    // To place our line in the middle, the first visible line should be
    // the: line - (linesOnScreen / 2)
    int firstVisibleLine = line - (linesOnScreen / 2);
    if(firstVisibleLine < 0) {
        firstVisibleLine = 0;
    }

    int real_visible_line = ctrl->VisibleFromDocLine(firstVisibleLine);
    ctrl->EnsureVisible(real_visible_line);
    ctrl->SetFirstVisibleLine(real_visible_line);
}

void clSTCHelper::SetCaretAt(wxStyledTextCtrl* ctrl, long pos)
{
    DoSetCaretAt(ctrl, pos);
    int line = ctrl->LineFromPosition(pos);

    // make sure that the line is visible (folded lines mainly)
    ctrl->EnsureVisible(line);

    // ensure caret is visible, but only if needed
    ScrollRange(ctrl, pos, pos);
}
