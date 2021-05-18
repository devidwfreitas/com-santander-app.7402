.class public Lgky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lgky;->b:Ljava/lang/CharSequence;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgky;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lgky;->c:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lgky;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lgky;->c:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lgky;->d:Z

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgky;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lgky;->b:Ljava/lang/CharSequence;

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lgky;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lgky;->d:Z

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgky;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgky;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lgky;->e:Z

    .line 72
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgky;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lgky;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lgky;->e:Z

    return v0
.end method
