#ifndef PHPEXPRESSION_H
#define PHPEXPRESSION_H

#include "codelite_exports.h"
#include <wx/string.h>
#include "PhpLexerAPI.h"
#include <list>
#include "PHPSourceFile.h"
#include "PHPLookupTable.h"

class WXDLLIMPEXP_CL PHPExpression
{
public:
    enum eType {
        kNone = -1,
        kThis,
        kSelf,
        kStatic,
    };
    struct Part {
        wxString m_text;
        int m_operator;
        int m_textType;
        wxString m_operatorText;

        Part()
            : m_operator(kPHP_T_OBJECT_OPERATOR)
            , m_textType(wxNOT_FOUND)
        {
        }
    };
    typedef std::list<PHPExpression::Part> List_t;
    typedef wxSharedPtr<PHPExpression> Ptr_t;

protected:
    eType m_type;
    wxString m_text;
    phpLexerToken::Vet_t m_expression;
    PHPExpression::List_t m_parts;
    wxString m_filter; // Part of the word that was typed by the user
                       // but will do no good to resolve the expression
    PHPSourceFile::Ptr_t m_sourceFile;
    bool m_functionCalltipExpr;

protected:
    phpLexerToken::Vet_t CreateExpression(const wxString& text);
    wxString SimplifyExpression(int depth);

public:
    PHPExpression(const wxString& fulltext, const wxString& exprText = wxString(), bool functionCalltipExpr = false);
    virtual ~PHPExpression();

    const phpLexerToken::Vet_t& GetExpression() const { return m_expression; }
    wxString GetExpressionAsString() const;
    /**
     * @brief return the source file used to create and parse this expression
     */
    PHPSourceFile::Ptr_t GetSourceFile() { return m_sourceFile; }

    /**
     * @brief resolve the expression and return the entity of the last part
     * of the expression
     */
    PHPEntityBase::Ptr_t Resolve(PHPLookupTable& lookpTable, const wxString& sourceFileName);
    /**
     * @brief return the filter for this expression
     */
    const wxString& GetFilter() const { return m_filter; }

    /**
     * @brief get the lookup flags to pass to the lookup table for feteching members
     */
    size_t GetLookupFlags() const;
};

#endif // PHPEXPRESSION_H
