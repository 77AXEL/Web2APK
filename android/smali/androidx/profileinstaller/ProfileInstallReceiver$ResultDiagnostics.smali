.class Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;
.super Ljava/lang/Object;
.source "ProfileInstallReceiver.java"

# interfaces
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultDiagnostics"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/profileinstaller/ProfileInstallReceiver;


# direct methods
.method constructor <init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 157
    iput-object p1, p0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->this$0:Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnosticReceived(ILjava/lang/Object;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 160
    sget-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived(ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 165
    sget-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->this$0:Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {v0, p1}, Landroidx/profileinstaller/ProfileInstallReceiver;->setResultCode(I)V

    .line 167
    return-void
.end method
