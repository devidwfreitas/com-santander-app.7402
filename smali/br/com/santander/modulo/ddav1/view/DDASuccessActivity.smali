.class public Lbr/com/santander/modulo/ddav1/view/DDASuccessActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field private a:Laff;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Ladt;->activity_dda_success:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/view/DDASuccessActivity;->setContentView(I)V

    sget v0, Ladw;->dda:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/view/DDASuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Laem;->a(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;)V

    new-instance v0, Laff;

    invoke-direct {v0, p0}, Laff;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lbr/com/santander/modulo/ddav1/view/DDASuccessActivity;->a:Laff;

    return-void
.end method
