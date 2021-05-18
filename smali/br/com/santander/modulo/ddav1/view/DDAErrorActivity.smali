.class public Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# static fields
.field public static final a:Ljava/lang/String; = "titleError"

.field public static final b:Ljava/lang/String; = "subtitleError"

.field public static final c:Ljava/lang/String; = "deviceId"

.field public static final d:Ljava/lang/String; = "cpf"


# instance fields
.field private e:Lafe;


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

    sget v0, Ladt;->activity_dda_error:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;->setContentView(I)V

    sget v0, Ladw;->dda:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Laem;->a(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;)V

    invoke-static {p0}, Laem;->a(Landroid/support/v7/app/AppCompatActivity;)V

    new-instance v0, Lafe;

    invoke-direct {v0, p0}, Lafe;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;->e:Lafe;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    new-instance v0, Laex;

    invoke-direct {v0, p0}, Laex;-><init>(Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;)V

    invoke-static {p1, v0}, Laem;->a(Landroid/view/MenuItem;Laen;)Z

    move-result v0

    return v0
.end method
