.class Llyr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field final synthetic a:Llyp;


# direct methods
.method constructor <init>(Llyp;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Llyr;->a:Llyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 167
    invoke-static {v0}, Lkvk;->getEnum(I)Lkvk;

    move-result-object v0

    .line 168
    iget-object v1, p0, Llyr;->a:Llyp;

    invoke-static {v1, v0}, Llyp;->a(Llyp;Lkvk;)V

    .line 171
    return-void
.end method
