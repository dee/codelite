//////////////////////////////////////////////////////////////////////
// This file was auto-generated by codelite's wxCrafter Plugin
// wxCrafter project file: clFileSystemWorkspaceDlgBase.wxcp
// Do not modify this file by hand!
//////////////////////////////////////////////////////////////////////

#ifndef _CODELITE_PLUGIN_CLFILESYSTEMWORKSPACEDLGBASE_BASE_CLASSES_H
#define _CODELITE_PLUGIN_CLFILESYSTEMWORKSPACEDLGBASE_BASE_CLASSES_H

// clang-format off
#include <wx/settings.h>
#include <wx/xrc/xmlres.h>
#include <wx/xrc/xh_bmp.h>
#include <wx/dialog.h>
#include <wx/iconbndl.h>
#include <wx/artprov.h>
#include <wx/sizer.h>
#include <wx/choicebk.h>
#include <wx/button.h>
#include <wx/stattext.h>
#include <wx/textctrl.h>
#include <wx/stc/stc.h>
#include <wx/panel.h>
#include <wx/notebook.h>
#include <wx/imaglist.h>
#include "clThemedSTC.hpp"
#include <wx/choice.h>
#include <wx/arrstr.h>
#include "clThemedChoice.h"
#include <wx/dataview.h>
#include "clThemedListCtrl.h"
#include <wx/checkbox.h>
#include <wx/filepicker.h>
#if wxVERSION_NUMBER >= 2900
#include <wx/persist.h>
#include <wx/persist/toplevel.h>
#include <wx/persist/bookctrl.h>
#include <wx/persist/treebook.h>
#endif

#ifdef WXC_FROM_DIP
#undef WXC_FROM_DIP
#endif
#if wxVERSION_NUMBER >= 3100
#define WXC_FROM_DIP(x) wxWindow::FromDIP(x, NULL)
#else
#define WXC_FROM_DIP(x) x
#endif

// clang-format on

class clFileSystemWorkspaceDlgBase : public wxDialog
{
protected:
    wxChoicebook* m_notebook;
    wxButton* m_buttonNew;
    wxButton* m_buttonDelete;
    wxStdDialogButtonSizer* m_stdBtnSizer4;
    wxButton* m_buttonOK;
    wxButton* m_button12;

protected:
    virtual void OnNewConfig(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDeleteConfig(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDeleteConfigUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnOK(wxCommandEvent& event) { event.Skip(); }

public:
    wxChoicebook* GetNotebook() { return m_notebook; }
    wxButton* GetButtonNew() { return m_buttonNew; }
    wxButton* GetButtonDelete() { return m_buttonDelete; }
    clFileSystemWorkspaceDlgBase(wxWindow* parent, wxWindowID id = wxID_ANY,
                                 const wxString& title = _("Workspace Settings"),
                                 const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1, -1),
                                 long style = wxDEFAULT_DIALOG_STYLE | wxRESIZE_BORDER);
    virtual ~clFileSystemWorkspaceDlgBase();
};

class BuildTargetDlgBase : public wxDialog
{
protected:
    wxStaticText* m_staticText58;
    wxTextCtrl* m_textCtrlaName;
    wxStaticText* m_staticText62;
    wxStyledTextCtrl* m_textCtrlValue;
    wxStdDialogButtonSizer* m_stdBtnSizer50;
    wxButton* m_button52;
    wxButton* m_button54;

protected:
    virtual void OnOK_UI(wxUpdateUIEvent& event) { event.Skip(); }

public:
    wxStaticText* GetStaticText58() { return m_staticText58; }
    wxTextCtrl* GetTextCtrlaName() { return m_textCtrlaName; }
    wxStaticText* GetStaticText62() { return m_staticText62; }
    wxStyledTextCtrl* GetTextCtrlValue() { return m_textCtrlValue; }
    BuildTargetDlgBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = _("Build Target"),
                       const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1, -1),
                       long style = wxDEFAULT_DIALOG_STYLE | wxRESIZE_BORDER);
    virtual ~BuildTargetDlgBase();
};

class FSConfigPageBase : public wxPanel
{
protected:
    wxNotebook* m_notebook;
    wxPanel* m_panelGeneral;
    wxStaticText* m_staticText109;
    wxTextCtrl* m_textCtrlExec;
    wxButton* m_button241;
    wxStaticText* m_staticText191;
    wxTextCtrl* m_textCtrlWD;
    wxButton* m_button243;
    wxStaticText* m_staticText113;
    clThemedSTC* m_textCtrlArgs;
    wxStaticText* m_staticText125;
    clThemedChoice* m_choiceCompiler;
    wxStaticText* m_staticText179;
    clThemedChoice* m_choiceDebuggers;
    wxStaticText* m_staticText35;
    wxTextCtrl* m_textCtrlFileExt;
    wxStaticText* m_staticText187;
    wxTextCtrl* m_textCtrlExcludeFiles;
    wxStaticText* m_staticText207;
    wxTextCtrl* m_textCtrlExcludePaths;
    wxButton* m_button213;
    wxPanel* m_panelBuild;
    clThemedListCtrl* m_dvListCtrlTargets;
    wxButton* m_buttonNew;
    wxButton* m_buttonEdit;
    wxButton* m_buttonDelete;
    wxPanel* Debugger;
    wxStaticText* m_staticText256;
    wxTextCtrl* m_textCtrlDebugger;
    wxButton* m_button262;
    wxStaticText* m_staticText265;
    wxStyledTextCtrl* m_stcCommands;
    wxPanel* m_panelCodeCompletion;
    wxStaticText* m_staticText26;
    wxStyledTextCtrl* m_stcCCFlags;
    wxPanel* m_panelEnv;
    wxStaticText* m_staticText119;
    wxStyledTextCtrl* m_stcEnv;
    wxPanel* m_panelRemote;
    wxCheckBox* m_checkBoxEnableRemote;
    wxStaticText* m_staticText161;
    wxChoice* m_choiceSSHAccount;
    wxStaticText* m_staticText165;
    wxTextCtrl* m_textCtrlRemoteFolder;
    wxButton* m_button169;
    wxCheckBox* m_checkBoxRemoteBuild;

protected:
    virtual void OnBrowseExec(wxCommandEvent& event) { event.Skip(); }
    virtual void OnBrowseWD(wxCommandEvent& event) { event.Skip(); }
    virtual void OnEditExcludePaths(wxCommandEvent& event) { event.Skip(); }
    virtual void OnTargetActivated(wxDataViewEvent& event) { event.Skip(); }
    virtual void OnNewTarget(wxCommandEvent& event) { event.Skip(); }
    virtual void OnEditTarget(wxCommandEvent& event) { event.Skip(); }
    virtual void OnEditTargetUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnDelete(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDeleteUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnBrowseForGDB(wxCommandEvent& event) { event.Skip(); }
    virtual void OnEnableRemoteUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnRemoteEnabledUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnSSHAccountChoice(wxCommandEvent& event) { event.Skip(); }
    virtual void OnSSHBrowse(wxCommandEvent& event) { event.Skip(); }

public:
    wxStaticText* GetStaticText109() { return m_staticText109; }
    wxTextCtrl* GetTextCtrlExec() { return m_textCtrlExec; }
    wxButton* GetButton241() { return m_button241; }
    wxStaticText* GetStaticText191() { return m_staticText191; }
    wxTextCtrl* GetTextCtrlWD() { return m_textCtrlWD; }
    wxButton* GetButton243() { return m_button243; }
    wxStaticText* GetStaticText113() { return m_staticText113; }
    clThemedSTC* GetTextCtrlArgs() { return m_textCtrlArgs; }
    wxStaticText* GetStaticText125() { return m_staticText125; }
    clThemedChoice* GetChoiceCompiler() { return m_choiceCompiler; }
    wxStaticText* GetStaticText179() { return m_staticText179; }
    clThemedChoice* GetChoiceDebuggers() { return m_choiceDebuggers; }
    wxStaticText* GetStaticText35() { return m_staticText35; }
    wxTextCtrl* GetTextCtrlFileExt() { return m_textCtrlFileExt; }
    wxStaticText* GetStaticText187() { return m_staticText187; }
    wxTextCtrl* GetTextCtrlExcludeFiles() { return m_textCtrlExcludeFiles; }
    wxStaticText* GetStaticText207() { return m_staticText207; }
    wxTextCtrl* GetTextCtrlExcludePaths() { return m_textCtrlExcludePaths; }
    wxButton* GetButton213() { return m_button213; }
    wxPanel* GetPanelGeneral() { return m_panelGeneral; }
    clThemedListCtrl* GetDvListCtrlTargets() { return m_dvListCtrlTargets; }
    wxButton* GetButtonNew() { return m_buttonNew; }
    wxButton* GetButtonEdit() { return m_buttonEdit; }
    wxButton* GetButtonDelete() { return m_buttonDelete; }
    wxPanel* GetPanelBuild() { return m_panelBuild; }
    wxStaticText* GetStaticText256() { return m_staticText256; }
    wxTextCtrl* GetTextCtrlDebugger() { return m_textCtrlDebugger; }
    wxButton* GetButton262() { return m_button262; }
    wxStaticText* GetStaticText265() { return m_staticText265; }
    wxStyledTextCtrl* GetStcCommands() { return m_stcCommands; }
    wxPanel* GetDebugger() { return Debugger; }
    wxStaticText* GetStaticText26() { return m_staticText26; }
    wxStyledTextCtrl* GetStcCCFlags() { return m_stcCCFlags; }
    wxPanel* GetPanelCodeCompletion() { return m_panelCodeCompletion; }
    wxStaticText* GetStaticText119() { return m_staticText119; }
    wxStyledTextCtrl* GetStcEnv() { return m_stcEnv; }
    wxPanel* GetPanelEnv() { return m_panelEnv; }
    wxCheckBox* GetCheckBoxEnableRemote() { return m_checkBoxEnableRemote; }
    wxStaticText* GetStaticText161() { return m_staticText161; }
    wxChoice* GetChoiceSSHAccount() { return m_choiceSSHAccount; }
    wxStaticText* GetStaticText165() { return m_staticText165; }
    wxTextCtrl* GetTextCtrlRemoteFolder() { return m_textCtrlRemoteFolder; }
    wxButton* GetButton169() { return m_button169; }
    wxCheckBox* GetCheckBoxRemoteBuild() { return m_checkBoxRemoteBuild; }
    wxPanel* GetPanelRemote() { return m_panelRemote; }
    wxNotebook* GetNotebook() { return m_notebook; }
    FSConfigPageBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition,
                     const wxSize& size = wxSize(500, -1), long style = wxTAB_TRAVERSAL);
    virtual ~FSConfigPageBase();
};

class NewFileSystemWorkspaceDialogBase : public wxDialog
{
protected:
    wxStaticText* m_staticText141;
    wxDirPickerCtrl* m_dirPickerPath;
    wxStaticText* m_staticText145;
    wxTextCtrl* m_textCtrlName;
    wxStdDialogButtonSizer* m_stdBtnSizer133;
    wxButton* m_buttonOK;
    wxButton* m_button137;

protected:
    virtual void OnDirSelected(wxFileDirPickerEvent& event) { event.Skip(); }
    virtual void OnOKUI(wxUpdateUIEvent& event) { event.Skip(); }

public:
    wxStaticText* GetStaticText141() { return m_staticText141; }
    wxDirPickerCtrl* GetDirPickerPath() { return m_dirPickerPath; }
    wxStaticText* GetStaticText145() { return m_staticText145; }
    wxTextCtrl* GetTextCtrlName() { return m_textCtrlName; }
    NewFileSystemWorkspaceDialogBase(wxWindow* parent, wxWindowID id = wxID_ANY,
                                     const wxString& title = _("Create workspace"),
                                     const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1, -1),
                                     long style = wxDEFAULT_DIALOG_STYLE | wxRESIZE_BORDER);
    virtual ~NewFileSystemWorkspaceDialogBase();
};

class clFSWNewConfigDlgBase : public wxDialog
{
protected:
    wxStaticText* m_staticText231;
    wxTextCtrl* m_textCtrlName;
    wxStaticText* m_staticText235;
    wxChoice* m_choiceCopyFrom;
    wxStdDialogButtonSizer* m_stdBtnSizer223;
    wxButton* m_button225;
    wxButton* m_button227;

protected:
    virtual void OnOKUI(wxUpdateUIEvent& event) { event.Skip(); }

public:
    wxStaticText* GetStaticText231() { return m_staticText231; }
    wxTextCtrl* GetTextCtrlName() { return m_textCtrlName; }
    wxStaticText* GetStaticText235() { return m_staticText235; }
    wxChoice* GetChoiceCopyFrom() { return m_choiceCopyFrom; }
    clFSWNewConfigDlgBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = _("New Configurtion"),
                          const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1, -1),
                          long style = wxDEFAULT_DIALOG_STYLE | wxRESIZE_BORDER);
    virtual ~clFSWNewConfigDlgBase();
};

#endif
