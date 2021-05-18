.class public Lhvr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "https://santander.custhelp.com/app/chat/chat_santander/p/168"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 29
    const-string v1, "Este canal de atendimento \u00e9 exclusivo para cancelamento de"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 30
    const-string v1, " Renegocia\u00e7\u00e3o de D\u00edvidas"

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 31
    const-string v1, " contratada nos \u00faltimos 7 dias"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 33
    new-instance v1, Lhno;

    invoke-direct {v1, p0}, Lhno;-><init>(Landroid/content/Context;)V

    const-string v2, "Renegocia\u00e7\u00e3o de D\u00edvidas"

    .line 34
    invoke-virtual {v1, v2}, Lhno;->a(Ljava/lang/String;)Lhno;

    move-result-object v1

    const-string v2, "Cancelamento de Renegocia\u00e7\u00e3o "

    .line 35
    invoke-virtual {v1, v2}, Lhno;->b(Ljava/lang/String;)Lhno;

    move-result-object v1

    const v2, 0x7f0203ba

    .line 36
    invoke-virtual {v1, v2}, Lhno;->a(I)Lhno;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lhno;->b(Landroid/text/Spanned;)Lhno;

    move-result-object v0

    const-string v1, "seg \u00e0 sex das 08:00 \u00e0s 20:00hrs"

    .line 38
    invoke-virtual {v0, v1}, Lhno;->d(Ljava/lang/String;)Lhno;

    move-result-object v0

    const-string v1, "https://santander.custhelp.com/app/chat/chat_santander/p/168"

    .line 39
    invoke-virtual {v0, v1}, Lhno;->e(Ljava/lang/String;)Lhno;

    move-result-object v0

    .line 40
    invoke-static {}, Lhxi;->f()Lhnl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhno;->a(Lhnl;)Lhno;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lhno;->a()Lhnp;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lhnp;->a()V

    .line 43
    return-void
.end method
