.class Lglr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lglp;


# direct methods
.method constructor <init>(Lglp;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lglr;->a:Lglp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lglr;->a:Lglp;

    invoke-static {v0}, Lglp;->b(Lglp;)V

    .line 193
    return-void
.end method
