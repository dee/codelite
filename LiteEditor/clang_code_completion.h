#ifndef CLANGCODECOMPLETION_H
#define CLANGCODECOMPLETION_H

#include <wx/event.h>
#include "asyncprocess.h"
#include <map>
#include "entry.h"
#include "clang_driver.h"
#include "clang_output_parser_api.h"

class IEditor;
class IManager;

/**
 * @class ClangCodeCompletion
 * @author eran
 * @date 07/18/10
 * @file clang_code_completion.h
 * @brief codelite's interface to clang's code completion
 */
class ClangCodeCompletion : public wxEvtHandler
{

	static ClangCodeCompletion* ms_instance;
	int                         m_activationPos;
	IEditor*                    m_activationEditor;
	ClangDriver                 m_clang;
	bool                        m_allEditorsAreClosing;
	
	friend class ClangDriver;

public:
	static ClangCodeCompletion* Instance();
	static void Release();

	void CodeComplete(IEditor *editor);
	void WordComplete(IEditor *editor);
	void Calltip(IEditor *editor);
	void CancelCodeComplete();
	void ClearCache();
	bool IsCacheEmpty();
	
protected:
	void DoParseOutput(const wxString &output);
	void DoCleanUp();
	TagEntryPtr ClangEntryToTagEntry(const ClangEntry& entry, const std::string &filter);
	
	// Event handling
	void OnFileLoaded(wxCommandEvent &e);
	void OnAllEditorsClosing(wxCommandEvent &e);
	void OnAllEditorsClosed(wxCommandEvent &e);
	
private:
	ClangCodeCompletion();
	~ClangCodeCompletion();

};

#endif // CLANGCODECOMPLETION_H
