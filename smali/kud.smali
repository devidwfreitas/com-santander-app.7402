.class public Lkud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field

.field private b:Lkty;
    .annotation runtime Leks;
        a = "certificate"
    .end annotation
.end field

.field private c:Lkua;
    .annotation runtime Leks;
        a = "endorsement"
    .end annotation
.end field

.field private d:Lkuj;
    .annotation runtime Leks;
        a = "insurance"
    .end annotation
.end field

.field private e:Lkuk;
    .annotation runtime Leks;
        a = "operation"
    .end annotation
.end field

.field private f:Lkuf;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field

.field private g:Lktz;
    .annotation runtime Leks;
        a = "channel"
    .end annotation
.end field

.field private h:Lktr;


# direct methods
.method public constructor <init>(Lktr;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lkud;->h:Lktr;

    .line 98
    return-void
.end method


# virtual methods
.method public a()Lktz;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkud;->g:Lktz;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lkud;->a:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public a(Lktr;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lkud;->h:Lktr;

    .line 62
    return-void
.end method

.method public a(Lkty;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lkud;->b:Lkty;

    .line 66
    return-void
.end method

.method public a(Lktz;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lkud;->g:Lktz;

    .line 44
    return-void
.end method

.method public a(Lkua;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lkud;->c:Lkua;

    .line 70
    return-void
.end method

.method public a(Lkuf;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lkud;->f:Lkuf;

    .line 94
    return-void
.end method

.method public a(Lkuj;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lkud;->d:Lkuj;

    .line 78
    return-void
.end method

.method public a(Lkuk;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lkud;->e:Lkuk;

    .line 90
    return-void
.end method

.method public b()Lkty;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lkud;->b:Lkty;

    return-object v0
.end method

.method public c()Lkua;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lkud;->c:Lkua;

    return-object v0
.end method

.method public d()Lktr;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lkud;->h:Lktr;

    return-object v0
.end method

.method public e()Lkuj;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lkud;->d:Lkuj;

    return-object v0
.end method

.method public f()Lkuk;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lkud;->e:Lkuk;

    return-object v0
.end method

.method public g()Lkuf;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lkud;->f:Lkuf;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkud;->b()Lkty;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->h()I

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->i()I

    move-result v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->o()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lkud;->a:Ljava/lang/String;

    return-object v0
.end method
