.class Lhsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhsh;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lhsf;


# direct methods
.method constructor <init>(Lhsf;ZLhsh;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lhsg;->e:Lhsf;

    iput-boolean p2, p0, Lhsg;->a:Z

    iput-object p3, p0, Lhsg;->b:Lhsh;

    iput-object p4, p0, Lhsg;->c:Ljava/lang/Object;

    iput-object p5, p0, Lhsg;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 105
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 106
    iget-boolean v0, p0, Lhsg;->a:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lhsg;->b:Lhsh;

    iget-object v0, p0, Lhsg;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lhsh;->a(F)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lhsg;->b:Lhsh;

    iget-object v0, p0, Lhsg;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lhsh;->a(I)V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 112
    iget-boolean v0, p0, Lhsg;->a:Z

    if-eqz v0, :cond_3

    .line 113
    iget-object v1, p0, Lhsg;->b:Lhsh;

    iget-object v0, p0, Lhsg;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lhsh;->a(F)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lhsg;->b:Lhsh;

    iget-object v0, p0, Lhsg;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lhsh;->a(I)V

    goto :goto_0
.end method
