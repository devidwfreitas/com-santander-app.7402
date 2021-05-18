.class public Lbdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbdw;

.field private final c:Lbao;

.field private final d:Lbao;

.field private final e:Lbao;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lbdw;Lbao;Lbao;Lbao;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lbdt;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lbdt;->b:Lbdw;

    .line 40
    iput-object p3, p0, Lbdt;->c:Lbao;

    .line 41
    iput-object p4, p0, Lbdt;->d:Lbao;

    .line 42
    iput-object p5, p0, Lbdt;->e:Lbao;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbdw;Lbao;Lbao;Lbao;Lbdu;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lbdt;-><init>(Ljava/lang/String;Lbdw;Lbao;Lbao;Lbao;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Layw;

    invoke-direct {v0, p2, p0}, Layw;-><init>(Lbdy;Lbdt;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbdt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbdw;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbdt;->b:Lbdw;

    return-object v0
.end method

.method public c()Lbao;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbdt;->d:Lbao;

    return-object v0
.end method

.method public d()Lbao;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbdt;->c:Lbao;

    return-object v0
.end method

.method public e()Lbao;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbdt;->e:Lbao;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbdt;->c:Lbao;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbdt;->d:Lbao;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbdt;->e:Lbao;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
