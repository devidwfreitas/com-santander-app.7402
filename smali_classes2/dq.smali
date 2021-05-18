.class Ldq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt;


# instance fields
.field final synthetic a:Ldp;

.field private final synthetic b:Ldm;


# direct methods
.method constructor <init>(Ldp;Ldm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldq;->a:Ldp;

    iput-object p2, p0, Ldq;->b:Ldm;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0}, Ldm;->a()V

    .line 92
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0, p1}, Ldm;->a(F)V

    .line 82
    return-void
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0, p1, p2}, Ldm;->a(IF)V

    .line 87
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0, p1}, Ldm;->a(Ljava/lang/Exception;)V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0, p1}, Ldm;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0, p1, p2}, Ldm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldq;->b:Ldm;

    invoke-interface {v0}, Ldm;->b()V

    .line 102
    return-void
.end method
