.class public Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipAdapter"
.end annotation


# instance fields
.field layoutAni:Landroid/view/animation/Animation;

.field mBody:Landroid/widget/TextView;

.field private mChildViewIDs:[I

.field private mLayoutInflator:Landroid/view/LayoutInflater;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    invoke-virtual {p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    return-void

    :array_1c
    .array-data 0x4
        0xaet 0x4t 0x2t 0x1t
        0xb0t 0x4t 0x2t 0x1t
        0xaft 0x4t 0x2t 0x1t
    .end array-data
.end method

.method private getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .registers 16

    const/4 v11, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v1, ""

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v8

    packed-switch v8, :pswitch_data_13a

    :goto_c
    :pswitch_c
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_28

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmapPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_2f
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_3a

    const-string v8, "ClipboardServiceEx"

    const-string v9, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3d} :catch_d5

    move-result-object v2

    :cond_3e
    :goto_3e
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_5c

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outMimeType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    iget-object v6, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v6, :cond_e5

    const-string v8, "bmp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e5

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_92

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmapOption.outWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bitmapOption.outHieght:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_b8

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGridItemWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mGridItemHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    :goto_b8
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v8, v7

    if-lt v8, p2, :cond_e3

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v8, v7

    if-lt v8, p3, :cond_e3

    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :pswitch_c5
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :pswitch_cd
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :catch_d5
    move-exception v5

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_3e

    const-string v8, "ClipboardServiceEx"

    const-string v9, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    :cond_e3
    add-int/lit8 v7, v7, -0x1

    :cond_e5
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_101

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sampleSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v8, 0x0

    :try_start_106
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_11e} :catch_127

    move-result-object v2

    :cond_11f
    :goto_11f
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_134

    move-object v3, v2

    :goto_126
    return-object v3

    :catch_127
    move-exception v5

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_11f

    const-string v8, "ClipboardServiceEx"

    const-string v9, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    :cond_134
    invoke-virtual {p0, v2, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    goto :goto_126

    :pswitch_data_13a
    .packed-switch 0x2
        :pswitch_c
        :pswitch_c5
        :pswitch_cd
    .end packed-switch
.end method

.method private getDataTypeFromView(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    :cond_6
    :goto_6
    return v0

    :cond_7
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    const/4 v0, 0x3

    goto :goto_6

    :cond_d
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    goto :goto_6
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .registers 10

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    move-object v2, v3

    :cond_9
    :goto_9
    if-eqz v2, :cond_16

    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_16

    packed-switch v4, :pswitch_data_2e

    :cond_16
    :goto_16
    :pswitch_16
    return v0

    :catch_17
    move-exception v1

    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ClipboardServiceEx"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :pswitch_24
    const/16 v0, 0x5a

    goto :goto_16

    :pswitch_27
    const/16 v0, 0xb4

    goto :goto_16

    :pswitch_2a
    const/16 v0, 0x10e

    goto :goto_16

    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_24
        :pswitch_16
        :pswitch_2a
    .end packed-switch
.end method

.method private setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_31

    move-result-object v2

    :goto_e
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_36

    instance-of v6, v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v6, :cond_36

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v9, :cond_30

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    :cond_36
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_6b

    instance-of v6, v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v6, :cond_6b

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5b

    move-object v6, p1

    check-cast v6, Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v6, p1

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5b
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_30

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_30

    :cond_6b
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_f7

    instance-of v6, v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v6, :cond_f7

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    move-object v6, v2

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move-object v6, v2

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_dd

    if-eqz v4, :cond_dd

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_9d

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Get first image from file using thumbnail"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_a9
    if-eqz v1, :cond_cd

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v0, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v5, v0, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_cd
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v9, :cond_30

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    :cond_dd
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e8

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Get first image from html tag"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v2, v6, v7}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_a9

    :cond_f7
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_11f

    instance-of v6, v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v6, :cond_11f

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v9, :cond_30

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    :cond_11f
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_147

    instance-of v6, v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-eqz v6, :cond_147

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v9, :cond_30

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    :cond_147
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_30

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Not Supported View type yet"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30
.end method

.method private setOnClickListenerToBodyView(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnTouchListenerToWebView(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_31

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    array-length v4, v11

    :cond_5
    :goto_5
    if-lez v4, :cond_31

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    add-int/lit8 v4, v4, -0x1

    aget v11, v11, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_20

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    :cond_31
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_33
    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v11

    move/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3e} :catch_61

    move-result-object v2

    :goto_3f
    if-nez v2, :cond_66

    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v11, :cond_5f

    const-string v11, "ClipboardServiceEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cbData does not exist...position : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const/4 v11, 0x0

    :goto_60
    return-object v11

    :catch_61
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f

    :cond_66
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v11

    packed-switch v11, :pswitch_data_13e

    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v11, :cond_78

    const-string v11, "ClipboardServiceEx"

    const-string v12, "current Item to be shown is invalid item type"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    move-object v11, v1

    goto :goto_60

    :pswitch_7a
    const v11, 0x10204ae

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v1, v8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_78

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a4

    :cond_9b
    :goto_9b
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v11, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_78

    :cond_a4
    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9b

    goto :goto_9b

    :pswitch_ae
    const v11, 0x10204b0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v1, v9

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_ce

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v11, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    :cond_ce
    if-eqz p3, :cond_78

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_78

    :pswitch_d8
    const v11, 0x10204af

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    move-object v1, v7

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_78

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v11, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_78

    :pswitch_f9
    const v11, 0x10204ae

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object v1, v10

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_78

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v11, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_78

    :pswitch_11b
    const v11, 0x10204ae

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v1, v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_78

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v11, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_78

    nop

    :pswitch_data_13e
    .packed-switch 0x2
        :pswitch_7a
        :pswitch_d8
        :pswitch_ae
        :pswitch_f9
        :pswitch_11b
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_27

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount() return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2e

    :cond_27
    :goto_27
    const/16 v2, 0x14

    if-le v1, v2, :cond_2d

    const/16 v1, 0x14

    :cond_2d
    return v1

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_27
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    :goto_b
    return-object v1

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x0

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView()position :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_82

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x109011c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_2c
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_7d

    move-result-object v0

    :goto_30
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_40
    if-eqz v0, :cond_8e

    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V

    :cond_45
    :goto_45
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    :cond_4d
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->showProtectedMarker(Landroid/view/View;I)V

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    :cond_5b
    if-eqz p1, :cond_62

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    :cond_62
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v4

    if-eqz v4, :cond_7c

    if-nez p1, :cond_7c

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0090

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_7c
    return-object v3

    :catch_7d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30

    :cond_82
    move-object v3, p2

    const/4 v4, 0x1

    :try_start_84
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_89

    move-result-object v0

    goto :goto_40

    :catch_89
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_40

    :cond_8e
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "ClipboardServiceEx"

    const-string v5, " Item View is null !!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 12

    const/high16 v3, 0x4000

    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq p1, v7, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    move-object p1, v7

    :cond_31
    :goto_31
    return-object p1

    :catch_32
    move-exception v8

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "ClipboardServiceEx"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method
