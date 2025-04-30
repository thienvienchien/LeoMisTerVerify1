-- Tải script từ URL
loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

-- Định nghĩa key đúng mà người dùng cần nhập
local correctKey = "Key" -- Key chính xác mà bạn muốn người dùng nhập
local userKey = ""  -- Biến để lưu key người dùng nhập (chưa nhập gì, sẽ cập nhật sau)

-- Cửa sổ hệ thống key
local Window = MakeWindow({
    Hub = {
        Title = "By-*Kun1",
        Animation = "LeoMisTerHub"
    },
    Key = {
        KeySystem = true,  -- Kích hoạt hệ thống key
        Title = "Key System",  -- Tiêu đề của cửa sổ
        Description = "!Put Key Here!",  -- Mô tả yêu cầu người dùng nhập key
        KeyLink = "https://linkbio.co/LeoMisTerHub",  -- Có thể để trống nếu không có link
        Keys = {"AdminKeyb1JUMH4N1Z49cvpXi1jA2es5", "K4814z7BbVhfqSF", "k4IIc75qXqb7JJ5","a1MGOXNpwtq8899","R245dWIE9Gzmjz9","hoanghaithien15082012"},  -- List key hợp lệ
        Notifi = {
            Notifications = true,  -- Kích hoạt thông báo
            CorrectKey = "Running Script...",  -- Thông báo khi key đúng
            Incorrectkey = "Key is incorrect. Please try again.",  -- Thông báo khi key sai
            CopyKeyLink = "Copied key to clipboard"  -- Thông báo sao chép key
        }
    }
})

-- Kiểm tra key người dùng nhập
if userKey == correctKey then
    -- Nếu key đúng, tiếp tục chạy script chính
    MinimizeButton({
        Image = "rbxassetid://96195633838921",
        Size = {60, 60},
        Color = Color3.fromRGB(10, 10, 10),
        Corner = true,
        Stroke = false,
        StrokeColor = Color3.fromRGB(255, 0, 0)
    })

    -- Tạo tab mới trong UI
    local Tab1o = MakeTab({Name = "Script Lua"})
    
    -- Tạo một button trong tab mới
    AddButton(Tab1o, {
        Name = "LeoMisterHub-BloxFruits",
        Callback = function()
            loadstring(game:HttpGet("Link"))(Settings)
        end
    })

    AddButton(Tab1o, {
      Name = "LeoMisterHub-Ficsh",
      Callback = function()
          loadstring(game:HttpGet(""))(Settings)
      end
  })

    AddButton(Tab1o, {
     Name = "LeoMisterHub-BladeBall",
    Callback = function()
        loadstring(game:HttpGet("Link"))(Settings)
    end
  })
    
      else
      
    -- Nếu key sai, không làm gì thêm và in ra thông báo lỗi
    print("!This key failed!")
end
