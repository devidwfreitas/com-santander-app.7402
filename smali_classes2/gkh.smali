.class public Lgkh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Outros_Home_Acao"

.field private static final b:Ljava/lang/String; = "Outros_Chat_Acao"

.field private static final c:Ljava/lang/String; = "Outros_Chat_PopUp_Acao"

.field private static final d:Ljava/lang/String; = "Outros_Chat_PopUpOpcoes_Acao"

.field private static final e:Ljava/lang/String; = "Outros_Chat_PopUpReconectar_Acao"

.field private static final f:Ljava/lang/String; = "Outros_Chat_SuaExperiencia_Acao"

.field private static final g:Ljava/lang/String; = "Outros_Chat_Nota"

.field private static final h:Ljava/lang/String; = "Outros_Chat_Sucesso_Acao"

.field private static final i:Ljava/lang/String; = "Chat"

.field private static final j:Ljava/lang/String; = "Voltar"

.field private static final k:Ljava/lang/String; = "Finalizar"

.field private static final l:Ljava/lang/String; = "Cancelar"

.field private static final m:Ljava/lang/String; = "Anexar"

.field private static final n:Ljava/lang/String; = "Camera"

.field private static final o:Ljava/lang/String; = "Galeria"

.field private static final p:Ljava/lang/String; = "Documento"

.field private static final q:Ljava/lang/String; = "Ok"

.field private static final r:Ljava/lang/String; = "Reconectar"

.field private static final s:Ljava/lang/String; = "Fechar"

.field private static final t:Ljava/lang/String; = "Anterior"

.field private static final u:Ljava/lang/String; = "Proximo"

.field private static final v:Ljava/lang/String; = "DigitarMensagem"

.field private static final w:Ljava/lang/String; = "Enviar"

.field private static final x:Ljava/lang/String; = "Nota"

.field private static final y:Ljava/lang/String; = "Sucesso"

.field private static final z:Ljava/lang/String; = "Falha"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "Outros_Home_Acao"

    const-string v1, "Chat"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    const-string v0, "Outros_Chat_PopUpOpcoes_Acao"

    invoke-static {v0, p0}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 63
    if-eqz p0, :cond_0

    .line 64
    const-string v0, "Outros_Chat_PopUp_Acao"

    const-string v1, "Finalizar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "Outros_Chat_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "Outros_Home_Acao"

    const-string v1, "Voltar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const-string v0, "Outros_Chat_PopUpOpcoes_Acao"

    invoke-static {v0, p0}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "Outros_Home_Acao"

    const-string v1, "Finalizar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "Outros_Chat_Acao"

    const-string v1, "DigitarMensagem"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "Outros_Chat_Acao"

    const-string v1, "Anexar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "Outros_Chat_Acao"

    const-string v1, "Reconectar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "Outros_Chat_PopUpReconectar_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "Outros_Chat_PopUpReconectar_Acao"

    const-string v1, "Reconectar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "Outros_Chat_SuaExperiencia_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lgkh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
