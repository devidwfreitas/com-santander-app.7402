.class Lme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmj;

.field final synthetic b:Lma;


# direct methods
.method constructor <init>(Lma;Lmj;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lme;->b:Lma;

    iput-object p2, p0, Lme;->a:Lmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lme;->b:Lma;

    iget-object v1, p0, Lme;->a:Lmj;

    invoke-static {v0, v1}, Lma;->a(Lma;Lmj;)V

    .line 179
    return-void
.end method
