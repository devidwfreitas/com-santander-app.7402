.class public Lgkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapa;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lgkk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgkk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Home_Acao ] -> "

    const-string v2, "Chat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lgkh;->a()V

    .line 25
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_PopUpOpcoes_Acao ] -> "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p1}, Lgkh;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_Acao ] -> "

    const-string v2, "Voltar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lgkh;->b()V

    .line 32
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_PopUpOpcoes_Acao ] -> "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p1}, Lgkh;->b(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_Acao ] -> "

    const-string v2, "Finalizar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lgkh;->c()V

    .line 39
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_PopUp_Acao ] -> "

    const-string v2, "Cancelar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lgkh;->a(Z)V

    .line 46
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_PopUp_Acao ] -> "

    const-string v2, "Finalizar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Lgkh;->a(Z)V

    .line 53
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_Acao ] -> "

    const-string v2, "DigitarMensagem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lgkh;->d()V

    .line 60
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_Acao ] -> "

    const-string v2, "Anexar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lgkh;->e()V

    .line 67
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_Acao ] -> "

    const-string v2, "Reconectar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lgkh;->f()V

    .line 88
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_PopUpReconectar_Acao ] -> "

    const-string v2, "Cancelar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lgkh;->g()V

    .line 95
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_PopUpReconectar_Acao ] -> "

    const-string v2, "Reconectar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lgkh;->h()V

    .line 102
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lgkk;->a:Ljava/lang/String;

    const-string v1, "[ Outros_Chat_SuaExperiencia_Acao ] -> "

    const-string v2, "Fechar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lgkh;->i()V

    .line 109
    return-void
.end method
