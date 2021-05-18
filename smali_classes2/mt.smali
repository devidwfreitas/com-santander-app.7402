.class Lmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmr;


# direct methods
.method constructor <init>(Lmr;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmt;->a:Lmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmt;->a:Lmr;

    invoke-static {v0}, Lmr;->a(Lmr;)V

    .line 182
    return-void
.end method
