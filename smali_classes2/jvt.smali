.class Ljvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljvs;


# direct methods
.method constructor <init>(Ljvs;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Ljvt;->a:Ljvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljvt;->a:Ljvs;

    invoke-static {v0}, Ljvs;->d(Ljvs;)V

    .line 129
    return-void
.end method
