#ifndef CLSSHCHANNEL_H
#define CLSSHCHANNEL_H

#if USE_SFTP

#include "asyncprocess.h"
#include "clSSHChannelCommon.hpp"
#include "codelite_exports.h"
#include "ssh/cl_ssh.h"

#include <wx/msgqueue.h>

class clJoinableThread;
/// a one-shot remote command
class WXDLLIMPEXP_CL clSSHChannel : public IProcess
{
public:
    typedef std::shared_ptr<clSSHChannel> Ptr_t;

public:
    struct Message {
        wxString buffer;
        bool raw = false;
    };

protected:
    clSSH::Ptr_t m_ssh;
    SSHChannel_t m_channel = nullptr;
    clJoinableThread* m_thread = nullptr;
    wxMessageQueue<Message> m_Queue;
    wxEvtHandler* m_owner = nullptr;
    bool m_wantStderr = false;

protected:
    wxString BuildError(const wxString& prefix) const;
    void DoWrite(const wxString& buffer, bool raw);

    void OnReadError(clCommandEvent& event);
    void OnWriteError(clCommandEvent& event);
    void OnReadOutput(clCommandEvent& event);
    void OnReadStderr(clCommandEvent& event);
    void OnChannelClosed(clCommandEvent& event);
    void OnChannelPty(clCommandEvent& event);

public:
    clSSHChannel(clSSH::Ptr_t ssh, wxEvtHandler* owner, bool wantStderrEvents = false);
    virtual ~clSSHChannel();

    /// Read from process stdout - return immediately if no data is available
    /// we return both converted buffer as string and the raw buffer (unconverted)
    bool Read(wxString& buff, wxString& buffErr, std::string& raw_buff, std::string& raw_buffErr) override
    {
        wxUnusedVar(buff);
        wxUnusedVar(buffErr);
        wxUnusedVar(raw_buff);
        wxUnusedVar(raw_buffErr);
        return false;
    }

    // Write to the process stdin
    // This version add LF to the buffer
    bool Write(const wxString& buff) override
    {
        wxUnusedVar(buff);
        return false;
    }

    // ANSI version
    // This version add LF to the buffer
    bool Write(const std::string& buff) override
    {
        wxUnusedVar(buff);
        return false;
    }

    // Write to the process stdin
    bool WriteRaw(const wxString& buff) override
    {
        wxUnusedVar(buff);
        return false;
    }

    // ANSI version
    bool WriteRaw(const std::string& buff) override
    {
        wxUnusedVar(buff);
        return false;
    }

    /**
     * @brief this method is mostly needed on MSW where writing a password
     * is done directly on the console buffer rather than its stdin
     */
    bool WriteToConsole(const wxString& buff) override
    {
        wxUnusedVar(buff);
        return false;
    }

    // Return true if the process is still alive
    bool IsAlive() override { return this->IsOpen(); }

    // Clean the process resources and kill the process if it is
    // still alive
    void Cleanup() override { Close(); }

    // Terminate the process. It is recommended to use this method
    // so it will invoke the 'Cleaup' procedure and the process
    // termination event will be sent out
    void Terminate() override { Close(); }

    /**
     * @brief is the channel opened?
     */
    bool IsOpen() const { return m_channel != nullptr; }

    /**
     * @brief Open the channel
     * @throw clException
     */
    void Open();

    /**
     * @brief close the channel
     */
    void Close();

    /**
     * @brief execute remote command
     * The reply will be returned to 'sink' object in form of events
     */
    void Execute(const wxString& command);

    /**
     * @brief Send a signal to remote process
     */
    void Signal(wxSignal sig) override;

    /**
     * @brief detach from the remote process (this does not kill it)
     */
    void Detach() override;
};
#endif
#endif // CLSSHCHANNEL_H
