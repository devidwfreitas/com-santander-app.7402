.class public Lkkj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkkf;


# direct methods
.method public constructor <init>(Lkkf;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lkkj;->a:Lkkf;

    .line 34
    return-void
.end method

.method static synthetic a(Lkkj;)Lkkf;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkkj;->a:Lkkf;

    return-object v0
.end method


# virtual methods
.method public a(Lkgj;)V
    .locals 5

    .prologue
    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "ddMMyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lkgj;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 86
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Lkgj;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lkgj;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v3}, Lkgj;->l(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v2}, Lkgj;->k(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v0}, Lkgj;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgj;->f(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgj;->B(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkgj;->C(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lkko;

    new-instance v1, Lkkn;

    invoke-direct {v1, p0}, Lkkn;-><init>(Lkkj;)V

    invoke-direct {v0, p1, v1}, Lkko;-><init>(Lkgj;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 112
    invoke-virtual {v0, v1}, Lkko;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lkid;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->e(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->A(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->B(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lkkq;

    new-instance v1, Lkkk;

    invoke-direct {v1, p0}, Lkkk;-><init>(Lkkj;)V

    invoke-direct {v0, p1, v1}, Lkkq;-><init>(Lkid;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 46
    invoke-virtual {v0, v1}, Lkkq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method

.method public b(Lkid;)V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->e(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->A(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->B(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lkkr;

    new-instance v1, Lkkl;

    invoke-direct {v1, p0}, Lkkl;-><init>(Lkkj;)V

    invoke-direct {v0, p1, v1}, Lkkr;-><init>(Lkid;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 59
    invoke-virtual {v0, v1}, Lkkr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public c(Lkid;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->e(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->A(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->B(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lkkp;

    new-instance v1, Lkkm;

    invoke-direct {v1, p0}, Lkkm;-><init>(Lkkj;)V

    invoke-direct {v0, p1, v1}, Lkkp;-><init>(Lkid;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 72
    invoke-virtual {v0, v1}, Lkkp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method
