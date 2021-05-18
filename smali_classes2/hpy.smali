.class abstract Lhpy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhso;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseCP:",
        "Ljava/lang/Object;",
        "ResponseConsig:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhso",
        "<TResponseCP;TResponseConsig;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseCP;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseConsig;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field final synthetic e:Lhpp;

.field private f:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;


# direct methods
.method constructor <init>(Lhpp;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lhpy;->e:Lhpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    return-void
.end method

.method constructor <init>(Lhpp;ZZ)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lhpy;->e:Lhpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-boolean p2, p0, Lhpy;->c:Z

    .line 546
    iput-boolean p3, p0, Lhpy;->d:Z

    .line 547
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 584
    iget-boolean v0, p0, Lhpy;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhpy;->d:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lhpy;->e:Lhpp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lhpp;->c(I)V

    .line 593
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-boolean v0, p0, Lhpy;->c:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lhpy;->e:Lhpp;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lhpp;->c(I)V

    goto :goto_0

    .line 588
    :cond_1
    iget-boolean v0, p0, Lhpy;->d:Z

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lhpy;->e:Lhpp;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lhpp;->c(I)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lhpy;->e:Lhpp;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lhpp;->c(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 575
    invoke-direct {p0}, Lhpy;->b()V

    .line 576
    iget-boolean v0, p0, Lhpy;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhpy;->d:Z

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lhpy;->f:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    invoke-virtual {p0, v0}, Lhpy;->c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lhpy;->a:Ljava/lang/Object;

    iget-object v1, p0, Lhpy;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lhpy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lhpy;->f:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    .line 558
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseConsig;)V"
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhpy;->d:Z

    .line 563
    iput-object p1, p0, Lhpy;->b:Ljava/lang/Object;

    .line 564
    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseCP;TResponseConsig;)V"
        }
    .end annotation
.end method

.method public b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lhpy;->f:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    if-nez v0, :cond_0

    .line 569
    iput-object p1, p0, Lhpy;->f:Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    .line 571
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseCP;)V"
        }
    .end annotation

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhpy;->c:Z

    .line 552
    iput-object p1, p0, Lhpy;->a:Ljava/lang/Object;

    .line 553
    return-void
.end method

.method public abstract c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
.end method
